/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class StringAsDatetimeTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that('1982-05-12 01:02:03')
              .asDatetime()
              .isEqualTo((Datetime) Datetime.newInstance(1982, 05, 12, 01, 02, 03));
    }

    @IsTest
    static void testNegativeScenarios() {
        failureScenario('1982-05-12 01:02:03', (Datetime) Datetime.newInstance(1985, 05, 12, 01, 02, 03));
    }

    @IsTest
    static void testValidations() {
        try {
            Assert.that((String) null).asDatetime();
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            Assert.that('not Datetime').asDatetime();
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            Assert.that(ae).hasCause();
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void failureScenario(String actual, Datetime expected) {
        try {
            Assert.that(actual).asDatetime().isEqualTo(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}

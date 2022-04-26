/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class StringAsDoubleTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that('1.0')
              .asDouble()
              .isEqualTo((Double) 1.0);
        Assert.that('0.0')
              .asDouble()
              .isEqualTo((Double) 0.0);
        Assert.that('-1.0')
              .asDouble()
              .isEqualTo((Double) -1.0);
    }

    @IsTest
    static void testNegativeScenarios() {
        failureScenario('1.0', (Double) 2.0);
    }

    @IsTest
    static void testValidations() {
        try {
            Assert.that((String) null).asDouble();
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            Assert.that('not double').asDouble();
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            Assert.that(ae).hasCause();
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void failureScenario(String actual, Double expected) {
        try {
            Assert.that(actual).asDouble().isEqualTo(expected);
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

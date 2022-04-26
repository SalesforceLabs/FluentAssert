/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class StringAsDecimalTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that('1.0')
              .asDecimal()
              .isEqualTo((Decimal) 1.0);
        Assert.that('0.0')
              .asDecimal()
              .isEqualTo((Decimal) 0.0);
        Assert.that('-1.0')
              .asDecimal()
              .isEqualTo((Decimal) -1.0);
    }

    @IsTest
    static void testNegativeScenarios() {
        failureScenario('1.0', (Decimal) 2.0);
    }

    @IsTest
    static void testValidations() {
        try {
            Assert.that((String) null).asDecimal();
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            Assert.that('not decimal').asDecimal();
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            Assert.that(ae).hasCause();
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void failureScenario(String actual, Decimal expected) {
        try {
            Assert.that(actual).asDecimal().isEqualTo(expected);
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

/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DecimalIsStrictlyBetweenTest {
    @IsTest
    static void testPositiveScenarios() {
        // start included, end included
        Decimal actual = 10;
        Assert.that((Decimal) actual).isStrictlyBetween((Decimal) (actual + -0.1), (Decimal) (actual + 0.1));
    }

    @IsTest
    static void testFailureScenarios() {
        Decimal actual = 10;
        failureScenario((Decimal) actual, actual, actual);
        failureScenario((Decimal) actual, (Decimal) (actual + -0.1), actual);
        failureScenario((Decimal) actual, actual, (Decimal) (actual + 0.1));
    }

    private static void failureScenario(Decimal actual, Decimal fromInclusive, Decimal toInclusive) {
        try {
            Assert.that(actual).isStrictlyBetween(fromInclusive, toInclusive);
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @IsTest
    static void testValidations() {
        validationScenario(null, 10, 10);
        validationScenario(10, null, 10);
        validationScenario(10, 10, null);
        validationScenario(10, null, null);
        validationScenario(null, null, null);
    }

    private static void validationScenario(Decimal actual, Decimal fromInclusive, Decimal toInclusive) {
        try {
            Assert.that(actual).isStrictlyBetween(fromInclusive, toInclusive);
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}

/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DoubleIsStrictlyBetweenTest {
    @IsTest
    static void testPositiveScenarios() {
        // start included, end included
        Double actual = 10;
        Assert.that((Double) actual).isStrictlyBetween((Double) (actual + -0.1), (Double) (actual + 0.1));
    }

    @IsTest
    static void testFailureScenarios() {
        Double actual = 10;
        failureScenario((Double) actual, actual, actual);
        failureScenario((Double) actual, (Double) (actual + -0.1), actual);
        failureScenario((Double) actual, actual, (Double) (actual + 0.1));
    }

    private static void failureScenario(Double actual, Double fromInclusive, Double toInclusive) {
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

    private static void validationScenario(Double actual, Double fromInclusive, Double toInclusive) {
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

/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DoubleIsGreaterThanToTest {
    @IsTest
    static void testPositiveScenarios() {
        Double actual = 10;
        Assert.that(actual).isGreaterThan((Double) actual + (Double) -0.1);
    }

    @IsTest
    static void testFailureScenarios() {
        Double actual = 10;
        failureScenario((Double) actual, actual);
        failureScenario((Double) actual, actual + (Double) 0.1);
    }

    private static void failureScenario(Double actual, Double expected) {
        try {
            Assert.that(actual).isGreaterThan(expected);
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
        validationScenario(null, 10);
        validationScenario(10, null);
        validationScenario(null, null);
    }

    private static void validationScenario(Double actual, Double expected) {
        try {
            Assert.that(actual).isGreaterThan(expected);
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

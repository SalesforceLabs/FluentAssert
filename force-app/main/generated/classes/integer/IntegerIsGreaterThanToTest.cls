/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerIsGreaterThanToTest {
    @IsTest
    static void testPositiveScenarios() {
        Integer actual = 10;
        Assert.that(actual).isGreaterThan((Integer) actual + (Integer) -1);
    }

    @IsTest
    static void testFailureScenarios() {
        Integer actual = 10;
        failureScenario((Integer) actual, actual);
        failureScenario((Integer) actual, actual + (Integer) 1);
    }

    private static void failureScenario(Integer actual, Integer expected) {
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

    private static void validationScenario(Integer actual, Integer expected) {
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

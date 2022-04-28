/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class LongIsLessThanTest {
    @IsTest
    static void testPositiveScenarios() {
        Long actual = 10;
        Assert.that(actual).isLessThan(actual + (Long) 1);
    }

    @IsTest
    static void testFailureScenarios() {
        Long actual = 10;
        failureScenario((Long) actual, actual);
        failureScenario((Long) actual, actual + (Long) -1);
    }

    private static void failureScenario(Long actual, Long expected) {
        try {
            Assert.that(actual).isLessThan(expected);
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

    private static void validationScenario(Long actual, Long expected) {
        try {
            Assert.that(actual).isLessThan(expected);
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

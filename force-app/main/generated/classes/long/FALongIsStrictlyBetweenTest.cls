/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FALongIsStrictlyBetweenTest {
    @IsTest
    static void testPositiveScenarios() {
        // start included, end included
        Long actual = 10;
        FluentAssert.that((Long) actual).isStrictlyBetween((Long) (actual + -1), (Long) (actual + 1));
    }

    @IsTest
    static void testFailureScenarios() {
        Long actual = 10;
        failureScenario((Long) actual, actual, actual);
        failureScenario((Long) actual, (Long) (actual + -1), actual);
        failureScenario((Long) actual, actual, (Long) (actual + 1));
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Long actual, Long fromInclusive, Long toInclusive) {
        try {
            FluentAssert.that(actual).isStrictlyBetween(fromInclusive, toInclusive);
            System.assert(false, 'No assert exception thrown');
        } catch(FluentAssert.AssertException ae) {
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

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Long actual, Long fromInclusive, Long toInclusive) {
        try {
            FluentAssert.that(actual).isStrictlyBetween(fromInclusive, toInclusive);
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

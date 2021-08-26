/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FADateIsInSetTest {
    @IsTest
    static void testPassingScenarios() {
        FluentAssert.that((Date) Date.newInstance(2020, 5, 12)).isIn((Set<Object>) new Set<Object>{(Date) Date.newInstance(2020, 5, 12)});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((Date) Date.newInstance(2020, 5, 12), new Set<Object>());
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Date actual, Set<Object> expected) {
        try {
            FluentAssert.that(actual).isIn(expected);
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
        validationScenario((Date) null, (Set<Object>) new Set<Object>{Date.newInstance(2020, 5, 12)});
        validationScenario((Date) Date.newInstance(2020, 5, 12), (Set<Object>) null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Date actual, Set<Object> expected) {
        try {
            FluentAssert.that(actual).isIn(expected);
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

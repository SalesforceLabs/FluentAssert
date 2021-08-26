/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FATimeIsInSetTest {
    @IsTest
    static void testPassingScenarios() {
        FluentAssert.that((Time) Time.newInstance(1, 2, 3, 4)).isIn((Set<Object>) new Set<Object>{(Time) Time.newInstance(1, 2, 3, 4)});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((Time) Time.newInstance(1, 2, 3, 4), new Set<Object>());
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Time actual, Set<Object> expected) {
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
        validationScenario((Time) null, (Set<Object>) new Set<Object>{Time.newInstance(1, 2, 3, 4)});
        validationScenario((Time) Time.newInstance(1, 2, 3, 4), (Set<Object>) null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Time actual, Set<Object> expected) {
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

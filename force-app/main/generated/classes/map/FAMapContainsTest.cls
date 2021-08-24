/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class FAMapContainsTest {
    private static final Map<Object, Object> EMPTY = new Map<Object, Object>();
    private static final Map<Object, Object> ABC = new Map<Object, Object>{
        'A' => 'a',
        'B' => 'b',
        'C' => 'c'
    };

    @IsTest
    static void testPositiveScenarios() {
        FluentAssert.that(ABC)
                    .containsEntry('A', 'a')
                    .values()
                        .contains(new List<Object>{'b'})
                    .back()
                    .keys()
                        .contains(new List<Object>{'B'});
    }

    @IsTest
    static void testNegativeScenarios() {
        failureScenario(EMPTY, 'A', 'a');
        failureScenario(ABC,   'A', 'b');
        failureScenario(ABC,   'B', 'a');
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Map<Object, Object> actual, Object expectedKey, Object expectedValue) {
        try {
            FluentAssert.that(actual).containsEntry(expectedKey, expectedValue);
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
        validationScenario((Map<Object, Object>) null, 'A', 'a');
        validationScenario(ABC, null, 'a');
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Map<Object, Object> actual, Object expectedKey, Object expectedValue) {
        try {
            FluentAssert.that(actual).containsEntry(expectedKey, expectedValue);
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
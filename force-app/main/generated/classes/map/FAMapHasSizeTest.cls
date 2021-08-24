/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class FAMapHasSizeTest {
    @IsTest
    static void testPositiveScenarios() {
        FluentAssert.that((Map<Object, Object>) new Map<Object, Object>()).hasSize(0);
        FluentAssert.that((Map<Object, Object>) new Map<Object, Object>()).size().isEqualTo(0);
        FluentAssert.that((Map<Object, Object>) new Map<Object, Object>{'X' => 'X'}).hasSize(1);
        FluentAssert.that((Map<Object, Object>) new Map<Object, Object>{'X' => 'X'}).size().isEqualTo(1);
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            FluentAssert.that((Map<Object, Object>) new Map<Object, Object>{'X' => 'X'}).hasSize(10);
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
        validationScenario(null, 10);
        validationScenario(new Map<Object, Object>(), null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Map<Object, Object> actual, Integer expected) {
        try {
            FluentAssert.that(actual).hasSize(expected);
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

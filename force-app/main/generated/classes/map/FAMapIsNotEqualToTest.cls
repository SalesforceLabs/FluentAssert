/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FAMapIsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        FluentAssert.that(new Map<Object, Object>{'X' => 'X'}).isNotEqualTo(new Map<Object, Object>{'Y' => 'Y'});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(new Map<Object, Object>{'X' => 'X'}, new Map<Object, Object>{'X' => 'X'});
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Map<Object, Object> actual, Map<Object, Object> expected) {
        try {
            FluentAssert.that(actual).isNotEqualTo(expected);
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
        validationScenario(null, new Map<Object, Object>{'X' => 'X'});
        validationScenario(new Map<Object, Object>{'X' => 'X'}, null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Map<Object, Object> actual, Map<Object, Object> expected) {
        try {
            FluentAssert.that(actual).isNotEqualTo(expected);
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

/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class FAStringEndsWithIgnoreCaseTest {
    @IsTest
    static void testPositiveScenarios() {
        String actual;
        String expected;
        actual = 'abc';
        expected = 'bc';
        FluentAssert.that(actual).endsWithIgnoreCase(expected);
        actual = 'abc';
        expected = 'BC';
        FluentAssert.that(actual).endsWithIgnoreCase(expected);
    }

    @IsTest
    static void testNegativeScenarios() {
        String actual;
        String expected;
        actual = 'abc';
        expected = 'd';
        failureScenario(actual, expected);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(String actual, String expected) {
        try {
            FluentAssert.that(actual).endsWithIgnoreCase(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(FluentAssert.AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}

/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class StringStartsWithTest {
    @IsTest
    static void testPositiveScenarios() {
        String actual;
        String expected;
        actual = 'abc';
        expected = 'ab';
        Assert.that(actual).startsWith(expected);
    }

    @IsTest
    static void testNegativeScenarios() {
        String actual;
        String expected;
        actual = 'abc';
        expected = 'AB';
        failureScenario(actual, expected);
        actual = 'abc';
        expected = 'bc';
        failureScenario(actual, expected);
    }

    private static void failureScenario(String actual, String expected) {
        try {
            Assert.that(actual).startsWith(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}

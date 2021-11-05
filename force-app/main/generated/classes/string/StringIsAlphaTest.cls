/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class StringIsAlphaTest {
    @IsTest
    static void testPositiveScenarios() {
        String actual;
        actual = 'abcABC';
        Assert.that(actual).isAlpha();
    }

    @IsTest
    static void testNegativeScenarios() {
        String actual;
        actual = 'a1';
        failureScenario(actual);
        actual = 'a ';
        failureScenario(actual);
        actual = 'a!';
        failureScenario(actual);
    }

    private static void failureScenario(String actual) {
        try {
            Assert.that(actual).isAlpha();
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

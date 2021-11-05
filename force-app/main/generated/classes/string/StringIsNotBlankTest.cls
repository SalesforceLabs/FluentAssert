/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class StringIsNotBlankTest {
    @IsTest
    static void testPositiveScenarios() {
        String actual;
        actual = 'a';
        Assert.that(actual).isNotBlank();
    }

    @IsTest
    static void testNegativeScenarios() {
        String actual;
        actual = '';
        failureScenario(actual);
        actual = ' ';
        failureScenario(actual);
        actual = (String) null;
        failureScenario(actual);
    }

    private static void failureScenario(String actual) {
        try {
            Assert.that(actual).isNotBlank();
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

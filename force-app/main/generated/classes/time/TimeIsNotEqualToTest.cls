/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class TimeIsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Time actual = Time.newInstance(1, 2, 3, 4);
        Assert.that((Time) actual).isNotEqualTo(Time.newInstance(1, 2, 3, 4).addMilliseconds(1));
    }

    @IsTest
    static void testFailureScenarios() {
        Time actual = Time.newInstance(1, 2, 3, 4);
        failureScenario(actual, actual);
    }

    private static void failureScenario(Time actual, Time expected) {
        try {
            Assert.that((Time) actual).isNotEqualTo(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @IsTest
    static void testValidations() {
        validationScenario(null, Time.newInstance(1, 2, 3, 4));
        validationScenario(Time.newInstance(1, 2, 3, 4), null);
    }

    private static void validationScenario(Time actual, Time expected) {
        try {
            Assert.that(actual).isNotEqualTo(expected);
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

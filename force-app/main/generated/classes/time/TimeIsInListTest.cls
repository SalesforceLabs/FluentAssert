/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class TimeIsInListTest {
    @IsTest
    static void testPassingScenarios() {
        Time value = Time.newInstance(1, 2, 3, 4);
        Assert.that(value).isIn((List<Object>) new List<Object>{value});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((Time) Time.newInstance(1, 2, 3, 4), new List<Object>());
    }

    private static void failureScenario(Time actual, List<Object> expected) {
        try {
            Assert.that(actual).isIn(expected);
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
        validationScenario((Time) null, (List<Object>) new List<Object>{Time.newInstance(1, 2, 3, 4)});
        validationScenario((Time) Time.newInstance(1, 2, 3, 4), (List<Object>) null);
    }

    private static void validationScenario(Time actual, List<Object> expected) {
        try {
            Assert.that(actual).isIn(expected);
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

/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DatetimeIsInListTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((Datetime) Datetime.newInstance(2020, 5, 12)).isIn((List<Object>) new List<Object>{(Datetime) Datetime.newInstance(2020, 5, 12)});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((Datetime) Datetime.newInstance(2020, 5, 12), new List<Object>());
    }

    private static void failureScenario(Datetime actual, List<Object> expected) {
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
        validationScenario((Datetime) null, (List<Object>) new List<Object>{Datetime.newInstance(2020, 5, 12)});
        validationScenario((Datetime) Datetime.newInstance(2020, 5, 12), (List<Object>) null);
    }

    private static void validationScenario(Datetime actual, List<Object> expected) {
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

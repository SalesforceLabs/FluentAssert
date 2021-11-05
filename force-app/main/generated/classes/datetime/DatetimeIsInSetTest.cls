/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DatetimeIsInSetTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((Datetime) Datetime.newInstance(2020, 5, 12)).isIn((Set<Object>) new Set<Object>{(Datetime) Datetime.newInstance(2020, 5, 12)});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((Datetime) Datetime.newInstance(2020, 5, 12), new Set<Object>());
    }

    private static void failureScenario(Datetime actual, Set<Object> expected) {
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
        validationScenario((Datetime) null, (Set<Object>) new Set<Object>{Datetime.newInstance(2020, 5, 12)});
        validationScenario((Datetime) Datetime.newInstance(2020, 5, 12), (Set<Object>) null);
    }

    private static void validationScenario(Datetime actual, Set<Object> expected) {
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

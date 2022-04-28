/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DateIsAfterOrEqualToTest {
    @IsTest
    static void testPositiveScenarios() {
        Date actual = Date.newInstance(2020, 5, 12);
        Assert.that(actual).isAfterOrEqualTo(actual);
        Assert.that(actual).isAfterOrEqualTo(actual.addDays(-1));
    }

    @IsTest
    static void testFailureScenarios() {
        Date actual = Date.newInstance(2020, 5, 12);
        failureScenario((Date) actual, actual.addDays(1));
    }

    private static void failureScenario(Date actual, Date expected) {
        try {
            Assert.that(actual).isAfterOrEqualTo(expected);
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
        validationScenario(null, Date.newInstance(2020, 5, 12));
        validationScenario(Date.newInstance(2020, 5, 12), null);
        validationScenario(null, null);
    }

    private static void validationScenario(Date actual, Date expected) {
        try {
            Assert.that(actual).isAfterOrEqualTo(expected);
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

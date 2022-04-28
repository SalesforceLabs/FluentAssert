/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DatetimeIsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Datetime actual = Datetime.now();
        Assert.that((Datetime) actual).isNotEqualTo(Datetime.now().addDays(1));
    }

    @IsTest
    static void testFailureScenarios() {
        Datetime actual = Datetime.now();
        failureScenario(actual, actual);
    }

    private static void failureScenario(Datetime actual, Datetime expected) {
        try {
            Assert.that((Datetime) actual).isNotEqualTo(expected);
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
        validationScenario(null, Datetime.now());
        validationScenario(Datetime.now(), null);
    }

    private static void validationScenario(Datetime actual, Datetime expected) {
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

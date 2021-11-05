/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DatetimeIsStrictlyBetweenTest {
    @IsTest
    static void testPositiveScenarios() {
        // start included, end included
        Datetime actual = Datetime.now();
        Assert.that((Datetime) actual).isStrictlyBetween((Datetime) (actual.addSeconds(-1)), (Datetime) (actual.addSeconds(1)));
    }

    @IsTest
    static void testFailureScenarios() {
        Datetime actual = Datetime.now();
        failureScenario((Datetime) actual, actual, actual);
        failureScenario((Datetime) actual, (Datetime) (actual.addSeconds(-1)), actual);
        failureScenario((Datetime) actual, actual, (Datetime) (actual.addSeconds(1)));
    }

    private static void failureScenario(Datetime actual, Datetime fromInclusive, Datetime toInclusive) {
        try {
            Assert.that(actual).isStrictlyBetween(fromInclusive, toInclusive);
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
        validationScenario(null, Datetime.now(), Datetime.now());
        validationScenario(Datetime.now(), null, Datetime.now());
        validationScenario(Datetime.now(), Datetime.now(), null);
        validationScenario(Datetime.now(), null, null);
        validationScenario(null, null, null);
    }

    private static void validationScenario(Datetime actual, Datetime fromInclusive, Datetime toInclusive) {
        try {
            Assert.that(actual).isStrictlyBetween(fromInclusive, toInclusive);
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

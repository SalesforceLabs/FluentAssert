/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DatetimeIsBetweenTest {
    @IsTest
    static void testPositiveScenarios() {
        // start included, end included
        Datetime actual = Datetime.now();
        Assert.that((Datetime) actual).isBetween(actual, actual);
        Assert.that((Datetime) actual).isBetween(actual.addSeconds(-2), actual);
        Assert.that((Datetime) actual).isBetween(actual, actual.addSeconds(2));
        Assert.that((Datetime) actual).isBetween(actual.addSeconds(-2), actual.addSeconds(2));
    }

    @IsTest
    static void testFailureScenarios() {
        Datetime actual = Datetime.now();
        failureScenario((Datetime) (actual.addSeconds(-2).addSeconds(-1)), actual.addSeconds(-2), actual.addSeconds(2));
        failureScenario((Datetime) (actual.addSeconds(2).addSeconds(1)), actual.addSeconds(-2), actual.addSeconds(2));
    }

    private static void failureScenario(Datetime actual, Datetime fromInclusive, Datetime toInclusive) {
        try {
            Assert.that(actual).isBetween(fromInclusive, toInclusive);
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
            Assert.that(actual).isBetween(fromInclusive, toInclusive);
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

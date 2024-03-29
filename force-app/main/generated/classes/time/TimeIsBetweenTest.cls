/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class TimeIsBetweenTest {
    @IsTest
    static void testPositiveScenarios() {
        // start included, end included
        Time actual = Time.newInstance(1, 2, 3, 4);
        Assert.that((Time) actual).isBetween(actual, actual);
        Assert.that((Time) actual).isBetween(actual.addMilliseconds(-2), actual);
        Assert.that((Time) actual).isBetween(actual, actual.addMilliseconds(2));
        Assert.that((Time) actual).isBetween(actual.addMilliseconds(-2), actual.addMilliseconds(2));
    }

    @IsTest
    static void testFailureScenarios() {
        Time actual = Time.newInstance(1, 2, 3, 4);
        failureScenario((Time) (actual.addMilliseconds(-2).addMilliseconds(-1)), actual.addMilliseconds(-2), actual.addMilliseconds(2));
        failureScenario((Time) (actual.addMilliseconds(2).addMilliseconds(1)), actual.addMilliseconds(-2), actual.addMilliseconds(2));
    }

    private static void failureScenario(Time actual, Time fromInclusive, Time toInclusive) {
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
        validationScenario(null, Time.newInstance(1, 2, 3, 4), Time.newInstance(1, 2, 3, 4));
        validationScenario(Time.newInstance(1, 2, 3, 4), null, Time.newInstance(1, 2, 3, 4));
        validationScenario(Time.newInstance(1, 2, 3, 4), Time.newInstance(1, 2, 3, 4), null);
        validationScenario(Time.newInstance(1, 2, 3, 4), null, null);
        validationScenario(null, null, null);
    }

    private static void validationScenario(Time actual, Time fromInclusive, Time toInclusive) {
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

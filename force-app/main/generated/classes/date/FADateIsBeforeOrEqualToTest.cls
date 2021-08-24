/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class FADateIsBeforeOrEqualToTest {
    @IsTest
    static void testPositiveScenarios() {
        Date actual = Date.newInstance(2020, 5, 12);
        FluentAssert.that(actual).isBeforeOrEqualTo(actual);
        FluentAssert.that(actual).isBeforeOrEqualTo(actual.addDays(1));
    }

    @IsTest
    static void testFailureScenarios() {
        Date actual = Date.newInstance(2020, 5, 12);
        failureScenario((Date) actual, actual.addDays(-1));
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Date actual, Date expected) {
        try {
            FluentAssert.that(actual).isBeforeOrEqualTo(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(FluentAssert.AssertException ae) {
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

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Date actual, Date expected) {
        try {
            FluentAssert.that(actual).isBeforeOrEqualTo(expected);
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

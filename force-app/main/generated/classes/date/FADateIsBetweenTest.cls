/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class FADateIsBetweenTest {
    @IsTest
    static void testPositiveScenarios() {
        // start included, end included
        Date actual = Date.today();
        FluentAssert.that((Date) actual).isBetween(actual, actual);
        FluentAssert.that((Date) actual).isBetween(actual.addDays(-2), actual);
        FluentAssert.that((Date) actual).isBetween(actual, actual.addDays(2));
        FluentAssert.that((Date) actual).isBetween(actual.addDays(-2), actual.addDays(2));
    }

    @IsTest
    static void testFailureScenarios() {
        Date actual = Date.today();
        failureScenario((Date) (actual.addDays(-2).addDays(-1)), actual.addDays(-2), actual.addDays(2));
        failureScenario((Date) (actual.addDays(2).addDays(1)), actual.addDays(-2), actual.addDays(2));
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Date actual, Date fromInclusive, Date toInclusive) {
        try {
            FluentAssert.that(actual).isBetween(fromInclusive, toInclusive);
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
        validationScenario(null, Date.today(), Date.today());
        validationScenario(Date.today(), null, Date.today());
        validationScenario(Date.today(), Date.today(), null);
        validationScenario(Date.today(), null, null);
        validationScenario(null, null, null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Date actual, Date fromInclusive, Date toInclusive) {
        try {
            FluentAssert.that(actual).isBetween(fromInclusive, toInclusive);
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

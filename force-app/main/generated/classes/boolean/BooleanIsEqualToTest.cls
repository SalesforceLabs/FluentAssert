/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class BooleanIsEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that(true).isEqualTo(true);
        Assert.that(false).isEqualTo(false);
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(true, false);
        failureScenario(false, true);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Boolean actual, Boolean expected) {
        try {
            Assert.that(actual).isEqualTo(expected);
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
        validationScenario(null, true);
        validationScenario(true, null);
        validationScenario(null, false);
        validationScenario(false, null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Boolean actual, Boolean expected) {
        try {
            Assert.that(actual).IsEqualTo(expected);
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
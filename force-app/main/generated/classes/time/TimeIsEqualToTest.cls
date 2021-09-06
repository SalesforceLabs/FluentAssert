/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class TimeIsEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((Time) Time.newInstance(1, 2, 3, 4)).isEqualTo(Time.newInstance(1, 2, 3, 4));
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(Time.newInstance(1, 2, 3, 4), Time.newInstance(1, 2, 3, 4).addMilliseconds(1));
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Time actual, Time expected) {
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
        validationScenario(null, Time.newInstance(1, 2, 3, 4));
        validationScenario(Time.newInstance(1, 2, 3, 4), null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Object actual, Object expected) {
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

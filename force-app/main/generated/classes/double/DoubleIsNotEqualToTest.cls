/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DoubleIsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that(-1000).isNotEqualTo(0);
        Assert.that(    0).isNotEqualTo(1000);
        Assert.that(-1000).isNotEqualTo(1000);
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(0, 0);
    }

    private static void failureScenario(Double actual, Double expected) {
        try {
            Assert.that(actual).isNotEqualTo(expected);
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
        validationScenario(null, 0);
        validationScenario(0, null);
    }

    private static void validationScenario(Double actual, Double expected) {
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

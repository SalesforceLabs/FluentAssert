/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class SObjectIsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        SObject actual = new Account(Name = 'X');
        Assert.that((SObject) actual).isNotEqualTo(new Account(Name = 'Y'));
    }

    @IsTest
    static void testFailureScenarios() {
        SObject actual = new Account(Name = 'X');
        failureScenario(actual, actual);
    }

    private static void failureScenario(SObject actual, SObject expected) {
        try {
            Assert.that((SObject) actual).isNotEqualTo(expected);
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
        validationScenario(null, new Account(Name = 'X'));
        validationScenario(new Account(Name = 'X'), null);
    }

    private static void validationScenario(SObject actual, SObject expected) {
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

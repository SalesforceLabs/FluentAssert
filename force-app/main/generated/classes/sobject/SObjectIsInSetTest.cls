/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class SObjectIsInSetTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((SObject) new Account(Name = 'X')).isIn((Set<Object>) new Set<Object>{(SObject) new Account(Name = 'X')});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((SObject) new Account(Name = 'X'), new Set<Object>());
    }

    private static void failureScenario(SObject actual, Set<Object> expected) {
        try {
            Assert.that(actual).isIn(expected);
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
        validationScenario((SObject) null, (Set<Object>) new Set<Object>{new Account(Name = 'X')});
        validationScenario((SObject) new Account(Name = 'X'), (Set<Object>) null);
    }

    private static void validationScenario(SObject actual, Set<Object> expected) {
        try {
            Assert.that(actual).isIn(expected);
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

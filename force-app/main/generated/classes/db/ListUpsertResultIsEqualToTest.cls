/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListUpsertResultIsEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        List<Database.UpsertResult> aCollection = new List<Database.UpsertResult>();
        Assert.that(aCollection).isEqualTo(aCollection);
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(new List<Database.UpsertResult>{DatabaseXResultUtil.createUpsertResult(true, true)}, new List<Database.UpsertResult>{DatabaseXResultUtil.createUpsertResult(true, true)});
    }

    private static void failureScenario(List<Database.UpsertResult> actual, List<Database.UpsertResult> expected) {
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
        validationScenario(null, new List<Database.UpsertResult>{DatabaseXResultUtil.createUpsertResult(true, true)});
        validationScenario(new List<Database.UpsertResult>{DatabaseXResultUtil.createUpsertResult(true, true)}, null);
    }

    private static void validationScenario(List<Database.UpsertResult> actual, List<Database.UpsertResult> expected) {
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

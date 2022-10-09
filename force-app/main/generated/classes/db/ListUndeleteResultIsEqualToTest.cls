/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListUndeleteResultIsEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        List<Database.UndeleteResult> aCollection = new List<Database.UndeleteResult>();
        Assert.that(aCollection).isEqualTo(aCollection);
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)}, new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)});
    }

    private static void failureScenario(List<Database.UndeleteResult> actual, List<Database.UndeleteResult> expected) {
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
        validationScenario(null, new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)});
        validationScenario(new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)}, null);
    }

    private static void validationScenario(List<Database.UndeleteResult> actual, List<Database.UndeleteResult> expected) {
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

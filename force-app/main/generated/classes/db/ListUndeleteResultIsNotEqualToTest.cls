/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListUndeleteResultIsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that(new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)}).isNotEqualTo(new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(false)});
    }

    @IsTest
    static void testFailureScenarios() {
        List<Database.UndeleteResult> actual = new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)};
        failureScenario(actual, actual);
    }

    private static void failureScenario(List<Database.UndeleteResult> actual, List<Database.UndeleteResult> expected) {
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
        validationScenario(null, new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)});
        validationScenario(new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)}, null);
    }

    private static void validationScenario(List<Database.UndeleteResult> actual, List<Database.UndeleteResult> expected) {
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

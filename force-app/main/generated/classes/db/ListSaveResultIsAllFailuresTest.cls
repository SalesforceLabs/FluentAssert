/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListSaveResultIsAllFailuresTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that(new List<Database.SaveResult>{DatabaseXResultUtil.createSaveResult(false), DatabaseXResultUtil.createSaveResult(false)})
              .size()
                .isEqualTo(2)
                .andThen()
              .isAllFailures();
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(new List<Database.SaveResult>{DatabaseXResultUtil.createSaveResult(false), DatabaseXResultUtil.createSaveResult(true)});
        failureScenario(new List<Database.SaveResult>{DatabaseXResultUtil.createSaveResult(true), DatabaseXResultUtil.createSaveResult(true)});
    }

    private static void failureScenario(List<Database.SaveResult> actual) {
        try {
            Assert.that(actual).isAllFailures();
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
        try {
            Assert.that((List<Database.SaveResult>) null).isAllFailures();
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
        try {
            Assert.that(new List<Database.SaveResult>()).isAllFailures();
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}

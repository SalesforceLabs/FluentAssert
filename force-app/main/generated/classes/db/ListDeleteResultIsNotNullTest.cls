/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListDeleteResultIsNotNullTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((List<Database.DeleteResult>) new List<Database.DeleteResult>()).isNotNull();
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            Assert.that((List<Database.DeleteResult>) null).isNotNull();
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName());
        }
    }
}

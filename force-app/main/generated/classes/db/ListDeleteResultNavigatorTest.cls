/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListDeleteResultNavigatorTest {
    @IsTest
    static void testPositiveScenarios() {
        Database.DeleteResult successResult = DatabaseXResultUtil.createDeleteResult(true);
        Database.DeleteResult failureResult = DatabaseXResultUtil.createDeleteResult(false);

        Assert.that(new List<Database.DeleteResult>{successResult, failureResult})
              .successIds()
                .containsOnly(new List<Id>{successResult.getId()})
                .andThen()
              .failureIds()
                .containsOnly(new List<Id>{failureResult.getId()});
    }
}

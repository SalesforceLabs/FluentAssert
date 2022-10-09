/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListUndeleteResultNavigatorTest {
    @IsTest
    static void testPositiveScenarios() {
        Database.UndeleteResult successResult = DatabaseXResultUtil.createUndeleteResult(true);
        Database.UndeleteResult failureResult = DatabaseXResultUtil.createUndeleteResult(false);

        Assert.that(new List<Database.UndeleteResult>{successResult, failureResult})
              .successIds()
                .containsOnly(new List<Id>{successResult.getId()})
                .andThen()
              .failureIds()
                .containsOnly(new List<Id>{failureResult.getId()});
    }
}

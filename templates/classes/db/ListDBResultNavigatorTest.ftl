<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign databaseResultTypes = [
    {"name": "DeleteResult",  "successInstance": "DatabaseXResultUtil.createDeleteResult(true)",      "failureInstance": "DatabaseXResultUtil.createDeleteResult(false)"},
    {"name": "SaveResult",    "successInstance": "DatabaseXResultUtil.createSaveResult(true)",        "failureInstance": "DatabaseXResultUtil.createSaveResult(false)"},
    {"name": "UndeleteResult","successInstance": "DatabaseXResultUtil.createUndeleteResult(true)",    "failureInstance": "DatabaseXResultUtil.createUndeleteResult(false)"},
    {"name": "UpsertResult",  "successInstance": "DatabaseXResultUtil.createUpsertResult(true, true)","failureInstance": "DatabaseXResultUtil.createUpsertResult(false, false)"}
]>
<@pp.dropOutputFile />
<#list databaseResultTypes as type>
  <@com.apexClass className="List${type.name}NavigatorTest" path="/classes/db/"/>
@IsTest
public class List${type.name}NavigatorTest {
    @IsTest
    static void testPositiveScenarios() {
        Database.${type.name} successResult = ${type.successInstance};
        Database.${type.name} failureResult = ${type.failureInstance};

        Assert.that(new List<Database.${type.name}>{successResult, failureResult})
              .successIds()
                .containsOnly(new List<Id>{successResult.getId()})
                .andThen()
              .failureIds()
                .containsOnly(new List<Id>{failureResult.getId()});
    }
}
</#list>
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
  <@com.apexClass className="List${type.name}IsAllFailuresTest" path="/classes/db/"/>
@IsTest
public class List${type.name}IsAllFailuresTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that(new List<Database.${type.name}>{${type.failureInstance}, ${type.failureInstance}})
              .size()
                .isEqualTo(2)
                .andThen()
              .isAllFailures();
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(new List<Database.${type.name}>{${type.failureInstance}, ${type.successInstance}});
        failureScenario(new List<Database.${type.name}>{${type.successInstance}, ${type.successInstance}});
    }

    private static void failureScenario(List<Database.${type.name}> actual) {
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
            Assert.that((List<Database.${type.name}>) null).isAllFailures();
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
        try {
            Assert.that(new List<Database.${type.name}>()).isAllFailures();
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
</#list>
<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign dataTypes = [
    {"type":"Object",                       "self": "'X'",                                                                              "other":"'Y'"},
    {"type":"Date",                         "self": "Date.today()",                                                                     "other":"Date.today().addDays(1)"},
    {"type":"Datetime",                     "self": "Datetime.now()",                                                                   "other":"Datetime.now().addDays(1)"},
    {"type":"Time",                         "self": "Time.newInstance(1, 2, 3, 4)",                                                     "other":"Time.newInstance(1, 2, 3, 4).addMilliseconds(1)"},
    {"type":"String",                       "self": "'X'",                                                                              "other":"'Y'"},
    {"type":"Blob",                         "self": "Blob.valueOf('X')",                                                                "other":"Blob.valueOf('Y')"},
    {"type":"Id",                           "self": "UserInfo.getOrganizationId()",                                                     "other":"UserInfo.getProfileId()"},
    {"type":"Boolean",                      "self": "true",                                                                             "other":"false"},
    {"type":"Decimal",                      "self": "10.0",                                                                             "other":"12.0"},
    {"type":"Double",                       "self": "10.0",                                                                             "other":"12.0"},
    {"type":"Long",                         "self": "10",                                                                               "other":"12"},
    {"type":"Integer",                      "self": "10",                                                                               "other":"12"},
    {"type":"List<Object>",                 "self": "new List<Object>()",                                                               "other":"new List<Object>()"},
    {"type":"Set<Object>",                  "self": "new Set<Object>()",                                                                "other":"new Set<Object>()"},
    {"type":"Map<Object, Object>",          "self": "new Map<Object, Object>{'X' => 'X'}",                                              "other":"new Map<Object, Object>{'Y' => 'Y'}"},
    {"type":"SObject",                      "self": "new Account(Name = 'X')",                                                          "other":"new Account(Name = 'Y')"},
    {"type":"Exception",                    "self": "new UnexpectedException('X')",                                                     "other":"new UnexpectedException('Y')"},
    {"type":"List<Database.DeleteResult>",  "self": "new List<Database.DeleteResult>{DatabaseXResultUtil.createDeleteResult(true)}",    "other":"new List<Database.DeleteResult>{DatabaseXResultUtil.createDeleteResult(true)}"},
    {"type":"List<Database.SaveResult>",    "self": "new List<Database.SaveResult>{DatabaseXResultUtil.createSaveResult(true)}",        "other":"new List<Database.SaveResult>{DatabaseXResultUtil.createSaveResult(true)}"},
    {"type":"List<Database.UndeleteResult>","self": "new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)}","other":"new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)}"},
    {"type":"List<Database.UpsertResult>",  "self": "new List<Database.UpsertResult>{DatabaseXResultUtil.createUpsertResult(true, true)}",    "other":"new List<Database.UpsertResult>{DatabaseXResultUtil.createUpsertResult(true, true)}"}
]>
<@pp.dropOutputFile />
<#list dataTypes as dt>
<@com.apexClass className="${com.classPrefix(dt.type)}IsNotSameTest" path="${com.classFilePath(dt.type)}"/>
@IsTest
public class ${com.classPrefix(dt.type)}IsNotSameTest {
    private static final ${dt.type} SELF = ${dt.self};
    private static final Object OTHER = ${dt.other};

    @IsTest
    static void testPositiveScenarios() {
        Assert.that((${dt.type}) SELF).isNotSame(OTHER);
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            Assert.that((${dt.type}) SELF).isNotSame(SELF);
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
        validationScenario((${dt.type}) SELF, null);
        validationScenario(null, (${dt.type}) SELF);
    }

    private static void validationScenario(${dt.type} actual, Object expected) {
        try {
            Assert.that(actual).isNotSame(expected);
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
</#list>
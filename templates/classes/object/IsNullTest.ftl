<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberDataTypes = [
    {"castingValue": "Integer",                      "instance": "0"},
    {"castingValue": "Long",                         "instance": "0"},
    {"castingValue": "Decimal",                      "instance": "0"},
    {"castingValue": "Double",                       "instance": "0"},
    {"castingValue": "List<Object>",                 "instance": "new List<Object>()"},
    {"castingValue": "Set<Object>",                  "instance": "new Set<Object>()"},
    {"castingValue": "Id",                           "instance": "UserInfo.getUserId()"},
    {"castingValue": "Boolean",                      "instance": "false"},
    {"castingValue": "Object",                       "instance": "'A'"},
    {"castingValue": "Date",                         "instance": "Date.today()"},
    {"castingValue": "Datetime",                     "instance": "Datetime.now()"},
    {"castingValue": "Time",                         "instance": "Time.newInstance(12, 13, 14, 15)"},
    {"castingValue": "String",                       "instance": "'A'"},
    {"castingValue": "Map<Object, Object>",          "instance": "new Map<Object, Object>()"},
    {"castingValue": "Blob",                         "instance": "Blob.valueOf('X')"},
    {"castingValue": "SObject",                      "instance": "new Account(Name = 'X')"},
    {"castingValue": "Exception",                    "instance": "new UnexpectedException('X')"},
    {"castingValue": "List<Database.DeleteResult>",  "instance": "new List<Database.DeleteResult>()"},
    {"castingValue": "List<Database.SaveResult>",    "instance": "new List<Database.SaveResult>()"},
    {"castingValue": "List<Database.UndeleteResult>","instance": "new List<Database.UndeleteResult>()"},
    {"castingValue": "List<Database.UpsertResult>",  "instance": "new List<Database.UpsertResult>()"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${com.classPrefix(numberDataType.castingValue)}IsNullTest" path="${com.classFilePath(numberDataType.castingValue)}"/>
@IsTest
public class ${com.classPrefix(numberDataType.castingValue)}IsNullTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((${numberDataType.castingValue}) null).isNull();
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            Assert.that((${numberDataType.castingValue}) ${numberDataType.instance}).isNull();
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}
</#list>
<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberDataTypes = [
    {"nativeDataType":"Integer",  "castingValue": "Integer",             "instance": "0"},
    {"nativeDataType":"Long",     "castingValue": "Long",                "instance": "0"},
    {"nativeDataType":"Decimal",  "castingValue": "Decimal",             "instance": "0"},
    {"nativeDataType":"Double",   "castingValue": "Double",              "instance": "0"},
    {"nativeDataType":"List",     "castingValue": "List<Object>",        "instance": "new List<Object>()"},
    {"nativeDataType":"Set",      "castingValue": "Set<Object>",         "instance": "new Set<Object>()"},
    {"nativeDataType":"Id",       "castingValue": "Id",                  "instance": "UserInfo.getUserId()"},
    {"nativeDataType":"Boolean",  "castingValue": "Boolean",             "instance": "false"},
    {"nativeDataType":"Object",   "castingValue": "Object",              "instance": "'A'"},
    {"nativeDataType":"Date",     "castingValue": "Date",                "instance": "Date.today()"},
    {"nativeDataType":"Datetime", "castingValue": "Datetime",            "instance": "Datetime.now()"},
    {"nativeDataType":"Time",     "castingValue": "Time",                "instance": "Time.newInstance(12, 13, 14, 15)"},
    {"nativeDataType":"String",   "castingValue": "String",              "instance": "'A'"},
    {"nativeDataType":"Map",      "castingValue": "Map<Object, Object>", "instance": "new Map<Object, Object>()"},
    {"nativeDataType":"Blob",     "castingValue": "Blob",                "instance": "Blob.valueOf('X')"},
    {"nativeDataType":"SObject",  "castingValue": "SObject",             "instance": "new Account(Name = 'X')"},
    {"nativeDataType":"Exception","castingValue": "Exception",           "instance": "new UnexpectedException('X')"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${numberDataType.nativeDataType}IsNotNullTest" path="/classes/${numberDataType.nativeDataType?lower_case}/"/>
@IsTest
public class ${numberDataType.nativeDataType}IsNotNullTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((${numberDataType.castingValue}) ${numberDataType.instance}).isNotNull();
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            Assert.that((${numberDataType.castingValue}) null).isNotNull();
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName());
        }
    }
}
</#list>
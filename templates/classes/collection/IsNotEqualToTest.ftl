<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberDataTypes = [
    {"castingValue": "List<Object>"},
    {"castingValue": "Set<Object>"},
    {"castingValue": "Map<Object, Object>",          "value1": "'X' => 'X'",                                    "value2": "'Y' => 'Y'"},
    {"castingValue": "List<Database.DeleteResult>",  "value1": "DatabaseXResultUtil.createDeleteResult(true)",  "value2": "DatabaseXResultUtil.createDeleteResult(false)"},
    {"castingValue": "List<Database.SaveResult>",    "value1": "DatabaseXResultUtil.createSaveResult(true)",    "value2": "DatabaseXResultUtil.createSaveResult(false)"},
    {"castingValue": "List<Database.UndeleteResult>","value1": "DatabaseXResultUtil.createUndeleteResult(true)","value2": "DatabaseXResultUtil.createUndeleteResult(false)"},
    {"castingValue": "List<Database.UpsertResult>",  "value1": "DatabaseXResultUtil.createUpsertResult(true, true)",  "value2": "DatabaseXResultUtil.createUpsertResult(false, false)"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${com.classPrefix(numberDataType.castingValue)}IsNotEqualToTest" path="${com.classFilePath(numberDataType.castingValue)}"/>
@IsTest
public class ${com.classPrefix(numberDataType.castingValue)}IsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that(new ${numberDataType.castingValue}{${numberDataType.value1!'\'X\''}}).isNotEqualTo(new ${numberDataType.castingValue}{${numberDataType.value2!'\'Y\''}});
    }

    @IsTest
    static void testFailureScenarios() {
        ${numberDataType.castingValue} actual = new ${numberDataType.castingValue}{${numberDataType.value1!'\'X\''}};
        failureScenario(actual, actual);
    }

    private static void failureScenario(${numberDataType.castingValue} actual, ${numberDataType.castingValue} expected) {
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
        validationScenario(null, new ${numberDataType.castingValue}{${numberDataType.value1!'\'X\''}});
        validationScenario(new ${numberDataType.castingValue}{${numberDataType.value1!'\'X\''}}, null);
    }

    private static void validationScenario(${numberDataType.castingValue} actual, ${numberDataType.castingValue} expected) {
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
</#list>
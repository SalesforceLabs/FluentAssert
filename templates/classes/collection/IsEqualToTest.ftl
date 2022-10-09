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
    {"castingValue": "List<Database.DeleteResult>",  "value1": "DatabaseXResultUtil.createDeleteResult(true)",  "value2": "DatabaseXResultUtil.createDeleteResult(true)"},
    {"castingValue": "List<Database.SaveResult>",    "value1": "DatabaseXResultUtil.createSaveResult(true)",    "value2": "DatabaseXResultUtil.createSaveResult(true)"},
    {"castingValue": "List<Database.UndeleteResult>","value1": "DatabaseXResultUtil.createUndeleteResult(true)","value2": "DatabaseXResultUtil.createUndeleteResult(true)"},
    {"castingValue": "List<Database.UpsertResult>",  "value1": "DatabaseXResultUtil.createUpsertResult(true, true)",  "value2": "DatabaseXResultUtil.createUpsertResult(true, true)"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${com.classPrefix(numberDataType.castingValue)}IsEqualToTest" path="${com.classFilePath(numberDataType.castingValue)}"/>
@IsTest
public class ${com.classPrefix(numberDataType.castingValue)}IsEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        ${numberDataType.castingValue} aCollection = new ${numberDataType.castingValue}();
        Assert.that(aCollection).isEqualTo(aCollection);
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(new ${numberDataType.castingValue}{${numberDataType.value1!'\'X\''}}, new ${numberDataType.castingValue}{${numberDataType.value2!'\'Y\''}});
    }

    private static void failureScenario(${numberDataType.castingValue} actual, ${numberDataType.castingValue} expected) {
        try {
            Assert.that(actual).isEqualTo(expected);
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
            Assert.that(actual).IsEqualTo(expected);
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
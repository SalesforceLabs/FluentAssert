<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign dataTypes = [
    {"type":"Boolean",   "value":"true"},
    {"type":"Decimal",   "value":"10.0"},
    {"type":"Double",    "value":"10.0"},
    {"type":"Integer",   "value":"10"},
    {"type":"Long",      "value":"10"},
    {"type":"Id",        "value":"UserInfo.getOrganizationId()"},
    {"type":"Date",      "value":"Date.newInstance(2020, 5, 12)"},
    {"type":"Datetime",  "value":"Datetime.newInstance(2020, 5, 12)"},
    {"type":"Time",      "value":"Time.newInstance(1, 2, 3, 4)"},
    {"type":"String",    "value":"'X'"},
    {"type":"Object",    "value":"'X'"},
    {"type":"Blob",      "value":"Blob.valueOf('X')"},
    {"type":"SObject",   "value":"new Account(Name = 'X')"},
    {"type":"Exception", "value":"new UnexpectedException('X')"}
]>
<@pp.dropOutputFile />
<#list ["Set", "List"] as colType>
<#list dataTypes as dataType>
<@com.apexClass className="${dataType.type}IsIn${colType}Test" path="/classes/${dataType.type?lower_case}/"/>
@IsTest
public class ${dataType.type}IsIn${colType}Test {
    @IsTest
    static void testPassingScenarios() {
        ${dataType.type} value = ${dataType.value};
        Assert.that(value).isIn((${colType}<Object>) new ${colType}<Object>{value});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((${dataType.type}) ${dataType.value}, new ${colType}<Object>());
    }

    private static void failureScenario(${dataType.type} actual, ${colType}<Object> expected) {
        try {
            Assert.that(actual).isIn(expected);
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
        validationScenario((${dataType.type}) null, (${colType}<Object>) new ${colType}<Object>{${dataType.value}});
        validationScenario((${dataType.type}) ${dataType.value}, (${colType}<Object>) null);
    }

    private static void validationScenario(${dataType.type} actual, ${colType}<Object> expected) {
        try {
            Assert.that(actual).isIn(expected);
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
</#list>
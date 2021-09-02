<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign dataTypes = [
    {"type":"Boolean", "concreteType":"Boolean",             "value":"true"},
    {"type":"Decimal", "concreteType":"Decimal",             "value":"10.0"},
    {"type":"Double",  "concreteType":"Double",              "value":"10.0"},
    {"type":"Integer", "concreteType":"Integer",             "value":"10"},
    {"type":"Long",    "concreteType":"Long",                "value":"10"},
    {"type":"Id",      "concreteType":"Id",                  "value":"UserInfo.getOrganizationId()"},
    {"type":"Date",    "concreteType":"Date",                "value":"Date.newInstance(2020, 5, 12)"},
    {"type":"Datetime","concreteType":"Datetime",            "value":"Datetime.newInstance(2020, 5, 12)"},
    {"type":"Time",    "concreteType":"Time",                "value":"Time.newInstance(1, 2, 3, 4)"},
    {"type":"String",  "concreteType":"String",              "value":"'X'"},
    {"type":"Object",  "concreteType":"Object",              "value":"'X'"},
    {"type":"Blob",    "concreteType":"Blob",                "value":"Blob.valueOf('X')"}
]>
<@pp.dropOutputFile />
<#list ["Set", "List"] as colType>
<#list dataTypes as dataType>
<@com.apexClass className="${classPrefix}${dataType.type}IsIn${colType}Test" path="/classes/${dataType.type?lower_case}/"/>
@IsTest
public class ${classPrefix}${dataType.type}IsIn${colType}Test {
    @IsTest
    static void testPassingScenarios() {
        FluentAssert.that((${dataType.concreteType}) ${dataType.value}).isIn((${colType}<Object>) new ${colType}<Object>{(${dataType.concreteType}) ${dataType.value}});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((${dataType.concreteType}) ${dataType.value}, new ${colType}<Object>());
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(${dataType.type} actual, ${colType}<Object> expected) {
        try {
            FluentAssert.that(actual).isIn(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(FluentAssert.AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @IsTest
    static void testValidations() {
        validationScenario((${dataType.concreteType}) null, (${colType}<Object>) new ${colType}<Object>{${dataType.value}});
        validationScenario((${dataType.concreteType}) ${dataType.value}, (${colType}<Object>) null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(${dataType.concreteType} actual, ${colType}<Object> expected) {
        try {
            FluentAssert.that(actual).isIn(expected);
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
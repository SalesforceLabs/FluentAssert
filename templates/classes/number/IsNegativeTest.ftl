<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberDataTypes = [
    {"nativeDataType":"Integer"},
    {"nativeDataType":"Long"},
    {"nativeDataType":"Decimal"},
    {"nativeDataType":"Double"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${numberDataType.nativeDataType}IsNegativeTest" path="/classes/${numberDataType.nativeDataType?lower_case}/"/>
@IsTest
public class ${numberDataType.nativeDataType}IsNegativeTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that((${numberDataType.nativeDataType}) -1).isNegative();
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(0);
        failureScenario(1);
    }

    private static void failureScenario(${numberDataType.nativeDataType} actual) {
        try {
            Assert.that(actual).isNegative();
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
            Assert.that((${numberDataType.nativeDataType}) null).isNegative();
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
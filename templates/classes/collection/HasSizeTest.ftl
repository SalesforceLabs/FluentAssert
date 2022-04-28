<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberDataTypes = [
    {"type": "List<Object>",        "emptyValue": "new List<Object>()",         "nonEmptyValue": "new List<Object>{'X'}"},
    {"type": "Set<Object>",         "emptyValue": "new Set<Object>()",          "nonEmptyValue": "new Set<Object>{'X'}"},
    {"type": "Map<Object, Object>", "emptyValue": "new Map<Object, Object>()",  "nonEmptyValue": "new Map<Object, Object>{'X' => 'X'}"},
    {"type": "Blob",                "emptyValue": "Blob.valueOf('')",           "nonEmptyValue": "Blob.valueOf('X')"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${numberDataType.type?keep_before('<')}HasSizeTest" path="/classes/${numberDataType.type?lower_case?keep_before('<')}/"/>
@IsTest
public class ${numberDataType.type?keep_before('<')}HasSizeTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that((${numberDataType.type}) ${numberDataType.emptyValue}).hasSize(0);
        Assert.that((${numberDataType.type}) ${numberDataType.emptyValue}).size().isEqualTo(0);
        Assert.that((${numberDataType.type}) ${numberDataType.nonEmptyValue}).hasSize(1);
        Assert.that((${numberDataType.type}) ${numberDataType.nonEmptyValue}).size().isEqualTo(1);
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            Assert.that((${numberDataType.type}) ${numberDataType.nonEmptyValue}).hasSize(10);
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
        validationScenario(null, 10);
        validationScenario(${numberDataType.emptyValue}, null);
    }

    private static void validationScenario(${numberDataType.type} actual, Integer expected) {
        try {
            Assert.that(actual).hasSize(expected);
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
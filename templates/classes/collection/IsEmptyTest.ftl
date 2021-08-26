<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../../common/apex-class.ftl" as com>

<#assign numberDataTypes = [
    {"nativeDataType":"List", "castingValue":"List<Object>",        "emptyValue": "new List<Object>()",         "nonEmptyValue": "new List<Object>{'X'}"},
    {"nativeDataType":"Set",  "castingValue":"Set<Object>",         "emptyValue": "new Set<Object>()",          "nonEmptyValue": "new Set<Object>{'X'}"},
    {"nativeDataType":"Map",  "castingValue":"Map<Object, Object>", "emptyValue": "new Map<Object, Object>()",  "nonEmptyValue": "new Map<Object, Object>{'X' => 'X'}"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${classPrefix}${numberDataType.nativeDataType}IsEmptyTest" path="/classes/${numberDataType.nativeDataType?lower_case}/"/>
@IsTest
public class ${classPrefix}${numberDataType.nativeDataType}IsEmptyTest {
    @IsTest
    static void testPositiveScenarios() {
        FluentAssert.that((${numberDataType.castingValue})${numberDataType.emptyValue}).isEmpty();
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            FluentAssert.that((${numberDataType.castingValue})${numberDataType.nonEmptyValue}).isEmpty();
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
        try {
            FluentAssert.that((${numberDataType.castingValue}) null).isEmpty();
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
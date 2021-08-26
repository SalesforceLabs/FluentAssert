<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../../common/apex-class.ftl" as com>

<#assign numberDataTypes = [
    {"nativeDataType":"Integer"},
    {"nativeDataType":"Long"},
    {"nativeDataType":"Decimal"},
    {"nativeDataType":"Double"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${classPrefix}${numberDataType.nativeDataType}IsNotZeroTest" path="/classes/${numberDataType.nativeDataType?lower_case}/"/>
@IsTest
public class ${classPrefix}${numberDataType.nativeDataType}IsNotZeroTest {
    @IsTest
    static void testPositiveScenarios() {
        FluentAssert.that((${numberDataType.nativeDataType}) -1).isNotZero();
        FluentAssert.that((${numberDataType.nativeDataType})  1).isNotZero();
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            FluentAssert.that((${numberDataType.nativeDataType}) 0).isNotZero();
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
            FluentAssert.that((${numberDataType.nativeDataType}) null).isNotZero();
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
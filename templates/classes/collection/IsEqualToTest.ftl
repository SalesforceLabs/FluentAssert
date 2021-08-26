<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../../common/apex-class.ftl" as com>

<#assign numberDataTypes = [
    {"nativeDataType":"List", "castingValue": "List<Object>"},
    {"nativeDataType":"Set",  "castingValue": "Set<Object>"},
    {"nativeDataType":"Map",  "castingValue": "Map<Object, Object>", "value1": "'X' => 'X'", "value2": "'Y' => 'Y'"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${classPrefix}${numberDataType.nativeDataType}IsEqualToTest" path="/classes/${numberDataType.nativeDataType?lower_case}/"/>
@IsTest
public class ${classPrefix}${numberDataType.nativeDataType}IsEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        ${numberDataType.castingValue} aCollection = new ${numberDataType.castingValue}();
        FluentAssert.that(aCollection).isEqualTo(aCollection);
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario(new ${numberDataType.castingValue}{${numberDataType.value1!'\'X\''}}, new ${numberDataType.castingValue}{${numberDataType.value2!'\'Y\''}});
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(${numberDataType.castingValue} actual, ${numberDataType.castingValue} expected) {
        try {
            FluentAssert.that(actual).isEqualTo(expected);
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
        validationScenario(null, new ${numberDataType.castingValue}{${numberDataType.value1!'\'X\''}});
        validationScenario(new ${numberDataType.castingValue}{${numberDataType.value1!'\'X\''}}, null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(${numberDataType.castingValue} actual, ${numberDataType.castingValue} expected) {
        try {
            FluentAssert.that(actual).IsEqualTo(expected);
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
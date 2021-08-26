<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../../common/apex-class.ftl" as com>

<#assign dataTypes = [
    {"native":"Integer", "validValue":"10", "minimumDelta": "1"},
    {"native":"Long",    "validValue":"10", "minimumDelta": "1"},
    {"native":"Decimal", "validValue":"10", "minimumDelta": "0.1"},
    {"native":"Double",  "validValue":"10", "minimumDelta": "0.1"}
]>
<@pp.dropOutputFile />
<#list dataTypes as dataType>
  <@com.apexClass className="${classPrefix}${dataType.native}IsLessThanTest" path="/classes/${dataType.native?lower_case}/"/>
@IsTest
public class ${classPrefix}${dataType.native}IsLessThanTest {
    @IsTest
    static void testPositiveScenarios() {
        ${dataType.native} actual = ${dataType.validValue};
        FluentAssert.that(actual).isLessThan(actual + (${dataType.native}) ${dataType.minimumDelta});
    }

    @IsTest
    static void testFailureScenarios() {
        ${dataType.native} actual = ${dataType.validValue};
        failureScenario((${dataType.native}) actual, actual);
        failureScenario((${dataType.native}) actual, actual + (${dataType.native}) -${dataType.minimumDelta});
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(${dataType.native} actual, ${dataType.native} expected) {
        try {
            FluentAssert.that(actual).isLessThan(expected);
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
        validationScenario(null, ${dataType.validValue});
        validationScenario(${dataType.validValue}, null);
        validationScenario(null, null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(${dataType.native} actual, ${dataType.native} expected) {
        try {
            FluentAssert.that(actual).isLessThan(expected);
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
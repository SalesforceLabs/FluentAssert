<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign dataTypes = [
    {"native":"Integer", "validValue":"10", "minimumDelta": "1"},
    {"native":"Long",    "validValue":"10", "minimumDelta": "1"},
    {"native":"Decimal", "validValue":"10", "minimumDelta": "0.1"},
    {"native":"Double",  "validValue":"10", "minimumDelta": "0.1"}
]>
<@pp.dropOutputFile />
<#list dataTypes as dataType>
  <@com.apexClass className="${dataType.native}IsLessThanOrEqualToTest" path="/classes/${dataType.native?lower_case}/"/>
@IsTest
public class ${dataType.native}IsLessThanOrEqualToTest {
    @IsTest
    static void testPositiveScenarios() {
        ${dataType.native} actual = ${dataType.validValue};
        Assert.that(actual).isLessThanOrEqualTo(actual);
        Assert.that(actual).isLessThanOrEqualTo(actual + (${dataType.native}) ${dataType.minimumDelta});
    }

    @IsTest
    static void testFailureScenarios() {
        ${dataType.native} actual = ${dataType.validValue};
        failureScenario((${dataType.native}) actual, actual + (${dataType.native}) -${dataType.minimumDelta});
    }

    private static void failureScenario(${dataType.native} actual, ${dataType.native} expected) {
        try {
            Assert.that(actual).isLessThanOrEqualTo(expected);
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
        validationScenario(null, ${dataType.validValue});
        validationScenario(${dataType.validValue}, null);
        validationScenario(null, null);
    }

    private static void validationScenario(${dataType.native} actual, ${dataType.native} expected) {
        try {
            Assert.that(actual).isLessThanOrEqualTo(expected);
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
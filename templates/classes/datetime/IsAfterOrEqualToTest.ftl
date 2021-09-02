<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign dataTypes = [
    {"native":"Date",     "validValue":"Date.newInstance(2020, 5, 12)",     "deltaTemplate":".addDays(DELTA)"},
    {"native":"Datetime", "validValue":"Datetime.newInstance(2020, 5, 12)", "deltaTemplate":".addSeconds(DELTA)"},
    {"native":"Time",     "validValue":"Time.newInstance(1, 2, 3, 4)",      "deltaTemplate":".addMilliseconds(DELTA)"}
]>
<@pp.dropOutputFile />
<#list dataTypes as dataType>
  <@com.apexClass className="${classPrefix}${dataType.native}IsAfterOrEqualToTest" path="/classes/${dataType.native?lower_case}/"/>
@IsTest
public class ${classPrefix}${dataType.native}IsAfterOrEqualToTest {
    @IsTest
    static void testPositiveScenarios() {
        ${dataType.native} actual = ${dataType.validValue};
        FluentAssert.that(actual).isAfterOrEqualTo(actual);
        FluentAssert.that(actual).isAfterOrEqualTo(actual${dataType.deltaTemplate?replace("DELTA", "-1")});
    }

    @IsTest
    static void testFailureScenarios() {
        ${dataType.native} actual = ${dataType.validValue};
        failureScenario((${dataType.native}) actual, actual${dataType.deltaTemplate?replace("DELTA", "1")});
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(${dataType.native} actual, ${dataType.native} expected) {
        try {
            FluentAssert.that(actual).isAfterOrEqualTo(expected);
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
            FluentAssert.that(actual).isAfterOrEqualTo(expected);
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
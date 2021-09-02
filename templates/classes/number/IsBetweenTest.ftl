<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign dataTypes = [
    {"native":"Integer", "validValue":"10",                           "minimumDelta": "1",   "deltaTemplate":" + DELTA"},
    {"native":"Long",    "validValue":"10",                           "minimumDelta": "1",   "deltaTemplate":" + DELTA"},
    {"native":"Decimal", "validValue":"10",                           "minimumDelta": "0.1", "deltaTemplate":" + DELTA"},
    {"native":"Double",  "validValue":"10",                           "minimumDelta": "0.1", "deltaTemplate":" + DELTA"},
    {"native":"Date",    "validValue":"Date.today()",                 "minimumDelta": "1",   "deltaTemplate":".addDays(DELTA)"},
    {"native":"Datetime","validValue":"Datetime.now()",               "minimumDelta": "1",   "deltaTemplate":".addSeconds(DELTA)"},
    {"native":"Time",    "validValue":"Time.newInstance(1, 2, 3, 4)", "minimumDelta": "1",   "deltaTemplate":".addMilliseconds(DELTA)"}
]>
<@pp.dropOutputFile />
<#list dataTypes as dataType>
  <@com.apexClass className="${classPrefix}${dataType.native}IsBetweenTest" path="/classes/${dataType.native?lower_case}/"/>
@IsTest
public class ${classPrefix}${dataType.native}IsBetweenTest {
    @IsTest
    static void testPositiveScenarios() {
        // start included, end included
        ${dataType.native} actual = ${dataType.validValue};
        FluentAssert.that((${dataType.native}) actual).isBetween(actual, actual);
        FluentAssert.that((${dataType.native}) actual).isBetween(actual${dataType.deltaTemplate?replace("DELTA", "-2")}, actual);
        FluentAssert.that((${dataType.native}) actual).isBetween(actual, actual${dataType.deltaTemplate?replace("DELTA", "2")});
        FluentAssert.that((${dataType.native}) actual).isBetween(actual${dataType.deltaTemplate?replace("DELTA", "-2")}, actual${dataType.deltaTemplate?replace("DELTA", "2")});
    }

    @IsTest
    static void testFailureScenarios() {
        ${dataType.native} actual = ${dataType.validValue};
        failureScenario((${dataType.native}) (actual${dataType.deltaTemplate?replace("DELTA", "-2")}${dataType.deltaTemplate?replace("DELTA", "-" + dataType.minimumDelta)}), actual${dataType.deltaTemplate?replace("DELTA", "-2")}, actual${dataType.deltaTemplate?replace("DELTA", "2")});
        failureScenario((${dataType.native}) (actual${dataType.deltaTemplate?replace("DELTA", "2")}${dataType.deltaTemplate?replace("DELTA", dataType.minimumDelta)}), actual${dataType.deltaTemplate?replace("DELTA", "-2")}, actual${dataType.deltaTemplate?replace("DELTA", "2")});
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(${dataType.native} actual, ${dataType.native} fromInclusive, ${dataType.native} toInclusive) {
        try {
            FluentAssert.that(actual).isBetween(fromInclusive, toInclusive);
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
        validationScenario(null, ${dataType.validValue}, ${dataType.validValue});
        validationScenario(${dataType.validValue}, null, ${dataType.validValue});
        validationScenario(${dataType.validValue}, ${dataType.validValue}, null);
        validationScenario(${dataType.validValue}, null, null);
        validationScenario(null, null, null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(${dataType.native} actual, ${dataType.native} fromInclusive, ${dataType.native} toInclusive) {
        try {
            FluentAssert.that(actual).isBetween(fromInclusive, toInclusive);
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
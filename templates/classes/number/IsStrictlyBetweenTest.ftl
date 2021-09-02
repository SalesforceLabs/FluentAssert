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
  <@com.apexClass className="${classPrefix}${dataType.native}IsStrictlyBetweenTest" path="/classes/${dataType.native?lower_case}/"/>
@IsTest
public class ${classPrefix}${dataType.native}IsStrictlyBetweenTest {
    @IsTest
    static void testPositiveScenarios() {
        // start included, end included
        ${dataType.native} actual = ${dataType.validValue};
        FluentAssert.that((${dataType.native}) actual).isStrictlyBetween((${dataType.native}) (actual${dataType.deltaTemplate?replace("DELTA", "-" + dataType.minimumDelta)}), (${dataType.native}) (actual${dataType.deltaTemplate?replace("DELTA", dataType.minimumDelta)}));
    }

    @IsTest
    static void testFailureScenarios() {
        ${dataType.native} actual = ${dataType.validValue};
        failureScenario((${dataType.native}) actual, actual, actual);
        failureScenario((${dataType.native}) actual, (${dataType.native}) (actual${dataType.deltaTemplate?replace("DELTA", "-" + dataType.minimumDelta)}), actual);
        failureScenario((${dataType.native}) actual, actual, (${dataType.native}) (actual${dataType.deltaTemplate?replace("DELTA", dataType.minimumDelta)}));
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(${dataType.native} actual, ${dataType.native} fromInclusive, ${dataType.native} toInclusive) {
        try {
            FluentAssert.that(actual).isStrictlyBetween(fromInclusive, toInclusive);
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
            FluentAssert.that(actual).isStrictlyBetween(fromInclusive, toInclusive);
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
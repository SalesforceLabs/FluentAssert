<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign dataTypes = [
    {"native":"Object",    "concreteValue": "'X'",                          "notEqualToValue":"'Y'"},
    {"native":"Date",      "concreteValue": "Date.today()",                 "notEqualToValue":"Date.today().addDays(1)"},
    {"native":"Datetime",  "concreteValue": "Datetime.now()",               "notEqualToValue":"Datetime.now().addDays(1)"},
    {"native":"Time",      "concreteValue": "Time.newInstance(1, 2, 3, 4)", "notEqualToValue":"Time.newInstance(1, 2, 3, 4).addMilliseconds(1)"},
    {"native":"String",    "concreteValue": "'X'",                          "notEqualToValue":"'Y'"},
    {"native":"Blob",      "concreteValue": "Blob.valueOf('X')",            "notEqualToValue":"Blob.valueOf('Y')"},
    {"native":"SObject",   "concreteValue": "new Account(Name = 'X')",      "notEqualToValue":"new Account(Name = 'Y')"},
    {"native":"Exception", "concreteValue": "new UnexpectedException('X')", "notEqualToValue":"new UnexpectedException('Y')"}
]>

<@pp.dropOutputFile />
<#list dataTypes as dataType>
<@com.apexClass className="${dataType.native}IsNotEqualToTest" path="/classes/${dataType.native?lower_case}/"/>
@IsTest
public class ${dataType.native}IsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        ${dataType.native} actual = ${dataType.concreteValue};
        Assert.that((${dataType.native}) actual).isNotEqualTo(${dataType.notEqualToValue});
    }

    @IsTest
    static void testFailureScenarios() {
        ${dataType.native} actual = ${dataType.concreteValue};
        failureScenario(actual, actual);
    }

    private static void failureScenario(${dataType.native} actual, ${dataType.native} expected) {
        try {
            Assert.that((${dataType.native}) actual).isNotEqualTo(expected);
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
        validationScenario(null, ${dataType.concreteValue});
        validationScenario(${dataType.concreteValue}, null);
    }

    private static void validationScenario(${dataType.native} actual, ${dataType.native} expected) {
        try {
            Assert.that(actual).isNotEqualTo(expected);
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
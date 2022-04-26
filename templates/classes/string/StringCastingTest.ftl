<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#--
    global DateAssertStringNavigator asDate() {
    global DatetimeAssertStringNavigator asDatetime() {
    global DecimalAssertStringNavigator asDecimal() {
    global DoubleAssertStringNavigator asDouble() {
    global IdAssertStringNavigator asId() {
    global LongAssertStringNavigator asLong() {
-->
<#assign stringCasts = [
    {
        "type":           "Boolean",
        "exceptionValue": "'not true'",
        "positiveScenarios": [
            {"actual": "'true'",  "expexted": "true"},
            {"actual": "'false'", "expexted": "false"}
        ],
        "negativeScenarios": [
            {"actual": "'true'", "unexpexted": "false"}
        ]
    },{
        "type":           "Integer",
        "exceptionValue": "'not integer'",
        "positiveScenarios": [
            {"actual": "'1'",  "expexted": "1"},
            {"actual": "'0'", "expexted": "0"},
            {"actual": "'-1'", "expexted": "-1"}
        ],
        "negativeScenarios": [
            {"actual": "'1'", "unexpexted": "2"}
        ]
    },{
        "type":           "Long",
        "exceptionValue": "'not long'",
        "positiveScenarios": [
            {"actual": "'1'",  "expexted": "1"},
            {"actual": "'0'", "expexted": "0"},
            {"actual": "'-1'", "expexted": "-1"}
        ],
        "negativeScenarios": [
            {"actual": "'1'", "unexpexted": "2"}
        ]
    },{
        "type":           "Decimal",
        "exceptionValue": "'not decimal'",
        "positiveScenarios": [
            {"actual": "'1.0'",  "expexted": "1.0"},
            {"actual": "'0.0'", "expexted": "0.0"},
            {"actual": "'-1.0'", "expexted": "-1.0"}
        ],
        "negativeScenarios": [
            {"actual": "'1.0'", "unexpexted": "2.0"}
        ]
    },{
        "type":           "Double",
        "exceptionValue": "'not double'",
        "positiveScenarios": [
            {"actual": "'1.0'",  "expexted": "1.0"},
            {"actual": "'0.0'", "expexted": "0.0"},
            {"actual": "'-1.0'", "expexted": "-1.0"}
        ],
        "negativeScenarios": [
            {"actual": "'1.0'", "unexpexted": "2.0"}
        ]
    },{
        "type":           "Id",
        "exceptionValue": "'not id'",
        "positiveScenarios": [
            {"actual": "String.valueOf(UserInfo.getProfileId())", "expexted": "UserInfo.getProfileId()"}
        ],
        "negativeScenarios": [
            {"actual": "String.valueOf(UserInfo.getProfileId())", "unexpexted": "UserInfo.getUserId()"}
        ]
    },{
        "type":           "Datetime",
        "exceptionValue": "'not Datetime'",
        "positiveScenarios": [
            {"actual": "'1982-05-12 01:02:03'", "expexted": "Datetime.newInstance(1982, 05, 12, 01, 02, 03)"}
        ],
        "negativeScenarios": [
            {"actual": "'1982-05-12 01:02:03'", "unexpexted": "Datetime.newInstance(1985, 05, 12, 01, 02, 03)"}
        ]
    },{
        "type":           "Date",
        "exceptionValue": "'not Date'",
        "positiveScenarios": [
            {"actual": "'1982-05-12'", "expexted": "Date.newInstance(1982, 05, 12)"}
        ],
        "negativeScenarios": [
            {"actual": "'1982-05-12'", "unexpexted": "Date.newInstance(1985, 05, 12)"}
        ]
    }
]>
<@pp.dropOutputFile />
<#list stringCasts as sc>
<@com.apexClass className="StringAs${sc.type}Test" path="/classes/string/"/>
@IsTest
public class StringAs${sc.type}Test {
    @IsTest
    static void testPositiveScenarios() {
        <#list sc.positiveScenarios as ps>
        Assert.that(${ps.actual})
              .as${sc.type}()
              .isEqualTo((${sc.type}) ${ps.expexted});
        </#list>
    }

    @IsTest
    static void testNegativeScenarios() {
        <#list sc.negativeScenarios as ns>
        failureScenario(${ns.actual}, (${sc.type}) ${ns.unexpexted});
        </#list>
    }

    @IsTest
    static void testValidations() {
        try {
            Assert.that((String) null).as${sc.type}();
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            Assert.that(${sc.exceptionValue}).as${sc.type}();
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            Assert.that(ae).hasCause();
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void failureScenario(String actual, ${sc.type} expected) {
        try {
            Assert.that(actual).as${sc.type}().isEqualTo(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}
</#list>
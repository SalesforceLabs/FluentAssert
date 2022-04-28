<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberDataTypes = [
    {
        "type":         "List<Object>",
        "interface":         ["List<Object>", "Set<Object>"],
        "value":         "new List<Object>()",
        "positiveScenarios": [{
            "actual":   "new List<Object>{'X'}",
            "expected": "new List<Object>{'Y'}"
        },{
            "actual":   "new List<Object>{'X'}",
            "expected": "new Set<Object>{'Y'}"
        }],
        "negativeScenarios": [{
            "actual":   "new List<Object>{'X'}",
            "expected": "new List<Object>{'X', 'Y'}"
        },{
            "actual":   "new List<Object>{'X'}",
            "expected": "new Set<Object>{'X', 'Y'}"
        }]
    },{
        "type":         "Set<Object>",
        "interface":      ["List<Object>", "Set<Object>"],
        "value":         "new Set<Object>()",
        "positiveScenarios": [{
            "actual":   "new Set<Object>{'X'}",
            "expected": "new List<Object>{'Y'}"
        },{
            "actual":   "new Set<Object>{'X'}",
            "expected": "new Set<Object>{'Y'}"
        }],
        "negativeScenarios": [{
            "actual":   "new Set<Object>{'X'}",
            "expected": "new List<Object>{'X', 'Y'}"
        },{
            "actual":   "new Set<Object>{'X'}",
            "expected": "new Set<Object>{'X', 'Y'}"
        }]
    },{
        "type":         "Map<Object, Object>",
        "interface":      ["Map<Object, Object>"],
        "value":         "new Map<Object, Object>()",
        "positiveScenarios": [{
            "actual":   "new Map<Object, Object>{'X' => 'X'}",
            "expected": "new Map<Object, Object>{'X' => 'X'}"
        }],
        "negativeScenarios": [{
            "actual":   "new Map<Object, Object>{'X' => 'X'}",
            "expected": "new Map<Object, Object>{'X' => 'X', 'Y' => 'Y'}"
        }]
    },{
        "type":          "Blob",
        "interface":      ["Blob"],
        "value":         "Blob.valueOf('X')",
        "positiveScenarios": [{
            "actual":   "Blob.valueOf('X')",
            "expected": "Blob.valueOf('Y')"
        }],
        "negativeScenarios": [{
            "actual":   "Blob.valueOf('X')",
            "expected": "Blob.valueOf('ABC')"
        }]
    }
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${numberDataType.type?keep_before('<')}HasSameSizeAsTest" path="/classes/${numberDataType.type?lower_case?keep_before('<')}/"/>
@IsTest
public class ${numberDataType.type?keep_before('<')}HasSameSizeAsTest {
    @IsTest
    static void testPositiveScenarios() {
<#list numberDataType.positiveScenarios as ps>
        Assert.that(${ps.actual}).hasSameSizeAs(${ps.expected});
</#list>
    }

    @IsTest
    static void testNegativeScenarios() {
<#list numberDataType.negativeScenarios as ns>
        try {
            Assert.that((${numberDataType.type}) ${ns.actual}).hasSameSizeAs(${ns.expected});
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

</#list>
    }

    @IsTest
    static void testValidations() {
<#list numberDataType.interface as i>
        validationScenario(null, ${numberDataType.value});
        validationScenario(${numberDataType.value}, (${i}) null);
</#list>
    }
<#list numberDataType.interface as i>

    private static void validationScenario(${numberDataType.type} actual, ${i} expected) {
        try {
            Assert.that(actual).hasSameSizeAs(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
</#list>
}
</#list>
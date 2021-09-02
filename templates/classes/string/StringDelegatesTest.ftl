<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign stringDelegates = [
    {
        "method": "isAllLowerCase",
        "positiveScenarios": [
            {"actual": "'abc'"}
        ],
        "negativeScenarios": [
            {"actual": "'ABC'"},
            {"actual": "'aBc'"}
        ]
    }, {
        "method": "isAllUpperCase",
        "positiveScenarios": [
            {"actual": "'ABC'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'"},
            {"actual": "'aBc'"}
        ]
    }, {
        "method": "isAlpha",
        "positiveScenarios": [
            {"actual": "'abcABC'"}
        ],
        "negativeScenarios": [
            {"actual": "'a1'"},
            {"actual": "'a '"},
            {"actual": "'a!'"}
        ]
    }, {
        "method": "isAlphaSpace",
        "positiveScenarios": [
            {"actual": "'abcABC '"}
        ],
        "negativeScenarios": [
            {"actual": "'a1'"}
        ]
    }, {
        "method": "isAlphanumeric",
        "positiveScenarios": [
            {"actual": "'a1B2'"}
        ],
        "negativeScenarios": [
            {"actual": "'a1B2!'"}
        ]
    }, {
        "method": "isAlphanumericSpace",
        "positiveScenarios": [
            {"actual": "'a1B2 '"}
        ],
        "negativeScenarios": [
            {"actual": "'aA$12'"}
        ]
    }, {
        "method": "isAsciiPrintable",
        "positiveScenarios": [
            {"actual": "'abcd1234!@#$%^*()`~-_+={[}]|:<,>.?'"}
        ],
        "negativeScenarios": [
            {"actual": "'√'"}
        ]
    }, {
        "method": "isNumeric",
        "positiveScenarios": [
            {"actual": "'09123456789'"}
        ],
        "negativeScenarios": [
            {"actual": "'a0123456789'"},
            {"actual": "'0123456789 '"}
        ]
    }, {
        "method": "isNumericSpace",
        "positiveScenarios": [
            {"actual": "'09123456789 '"}
        ],
        "negativeScenarios": [
            {"actual": "'a0123456789'"}
        ]
    }, {
        "method": "isWhitespace",
        "positiveScenarios": [
            {"actual": "' '"},
            {"actual": "''"}
        ],
        "negativeScenarios": [
            {"actual": "'a '"}
        ]
    }, {
        "method": "isBlank",
        "positiveScenarios": [
            {"actual": "' '"},
            {"actual": "''"},
            {"actual": "(String) null"}
        ],
        "negativeScenarios": [
            {"actual": "'a'"}
        ]
    }, {
        "method": "isEmpty",
        "positiveScenarios": [
            {"actual": "''"},
            {"actual": "(String) null"}
        ],
        "negativeScenarios": [
            {"actual": "'a'"}
        ]
    }, {
        "method": "isNotBlank",
        "positiveScenarios": [
            {"actual": "'a'"}
        ],
        "negativeScenarios": [
            {"actual": "''"},
            {"actual": "' '"},
            {"actual": "(String) null"}
        ]
    }, {
        "method": "isNotEmpty",
        "positiveScenarios": [
            {"actual": "' '"},
            {"actual": "'a'"}
        ],
        "negativeScenarios": [
            {"actual": "''"},
            {"actual": "(String) null"}
        ]
    }, {
        "method": "containsWhitespace",
        "positiveScenarios": [
            {"actual": "'a '"}
        ],
        "negativeScenarios": [
            {"actual": "'a'"}
        ]
    }, {
        "method": "contains",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'bc'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'d'"}
        ]
    }, {
        "method": "containsAny",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'b'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'d'"}
        ]
    }, {
        "method": "containsIgnoreCase",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'BC'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'D'"}
        ]
    }, {
        "method": "containsNone",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'d'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'c'"}
        ]
    }, {
        "method": "containsOnly",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'cab'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'d'"}
        ]
    }, {
        "method": "endsWith",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'bc'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'d'"},
            {"actual": "'abc'", "expected": "'BC'"}
        ]
    }, {
        "method": "endsWithIgnoreCase",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'bc'"},
            {"actual": "'abc'", "expected": "'BC'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'d'"}
        ]
    }, {
        "method": "equalsIgnoreCase",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'abc'"},
            {"actual": "'abc'", "expected": "'ABC'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'d'"}
        ]
    }, {
        "method": "startsWith",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'ab'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'AB'"},
            {"actual": "'abc'", "expected": "'bc'"}
        ]
    }, {
        "method": "startsWithIgnoreCase",
        "interface": [{"type": "String", "name": "expected"}],
        "positiveScenarios": [
            {"actual": "'abc'", "expected": "'AB'"},
            {"actual": "'abc'", "expected": "'ab'"}
        ],
        "negativeScenarios": [
            {"actual": "'abc'", "expected": "'bc'"}
        ]
    }
]>
<@pp.dropOutputFile />
<#list stringDelegates as sd>
<@com.apexClass className="${classPrefix}String${sd.method?cap_first}Test" path="/classes/string/"/>
@IsTest
public class ${classPrefix}String${sd.method?cap_first}Test {
    @IsTest
    static void testPositiveScenarios() {
        String actual;
<#if (sd.interface??)><#list sd.interface as sdi>
        ${sdi.type} ${sdi.name};
</#list></#if>
        <#list sd.positiveScenarios as ps><#list ps?keys as nk>
        ${nk} = ${ps[nk]};
        </#list>
        FluentAssert.that(actual).${sd.method}(<#if (sd.interface??)><#list sd.interface as sdi>${sdi.name}<#sep>, </#list></#if>);
        </#list>
    }

    @IsTest
    static void testNegativeScenarios() {
        String actual;
<#if (sd.interface??)><#list sd.interface as sdi>
        ${sdi.type} ${sdi.name};
</#list></#if>
        <#list sd.negativeScenarios as ns><#list ns?keys as nk>
        ${nk} = ${ns[nk]};
        </#list>
        failureScenario(actual<#if (sd.interface??)>, <#list sd.interface as sdi>${sdi.name}<#sep>, </#list></#if>);
        </#list>
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(String actual<#if (sd.interface??)>, <#list sd.interface as sdi>${sdi.type} ${sdi.name}<#sep>, </#list></#if>) {
        try {
            FluentAssert.that(actual).${sd.method}(<#if (sd.interface??)><#list sd.interface as sdi>${sdi.name}<#sep>, </#list></#if>);
            System.assert(false, 'No assert exception thrown');
        } catch(FluentAssert.AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}
</#list>
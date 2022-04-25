<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<#assign delegations = {
    "integer": [
        {
            "method":    "isNegative"
        },{
            "method":    "isPositive"
        },{
            "method":    "isNotNegative"
        },{
            "method":    "isNotPositive"
        },{
            "method":    "isOne"
        },{
            "method":    "isZero"
        },{
            "method":    "isNotZero"
        },{
            "method":    "isNull"
        },{
            "method":    "isNotNull"
        },{
            "method":    "isBetween",
            "interface": [{
                "type": "Integer", "name": "fromInclusive"
            },{
                "type": "Integer", "name": "toInclusive"
            }]
        },{
            "method":    "isStrictlyBetween",
            "interface": [{
                "type": "Integer", "name": "fromExclusive"
            },{
                "type": "Integer", "name": "toExclusive"
            }]
        },{
            "method":    "isEqualTo",
            "interface": [{
                "type": "Integer", "name": "expected"
            }]
        },{
            "method":    "isNotEqualTo",
            "interface": [{
                "type": "Integer", "name": "expected"
            }]
        },{
            "method":    "isLessThan",
            "interface": [{
                "type": "Integer", "name": "expected"
            }]
        },{
            "method":    "isLessThanOrEqualTo",
            "interface": [{
                "type": "Integer", "name": "expected"
            }]
        },{
            "method":    "isGreaterThan",
            "interface": [{
                "type": "Integer", "name": "expected"
            }]
        },{
            "method":    "isGreaterThanOrEqualTo",
            "interface": [{
                "type": "Integer", "name": "expected"
            }]
        },{
            "method":    "isIn",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "isIn",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        }
    ],
    "list": [
        {
            "method":    "isEmpty"
        },{
            "method":    "isNotEmpty"
        },{
            "method":    "isSorted"
        },{
            "method":    "containsOnlyNulls"
        },{
            "method":    "isNull"
        },{
            "method":    "isNotNull"
        },{
            "method":    "isSame",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isNotSame",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "contains",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "contains",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "doesNotContain",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "doesNotContain",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "hasSize",
            "interface": [{
                "type": "Integer", "name": "expected"
            }]
        },{
            "method":    "hasSameSizeAs",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "hasSameSizeAs",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "containsAnyOf",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "containsAnyOf",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "containsExactlyInAnyOrder",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "containsExactlyInAnyOrder",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "containsExactly",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "containsSequence",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "doesNotContainSequence",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "containsSubsequence",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "doesNotContainSubsequence",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "containsOnly",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "containsOnlyOnce",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "isEqualTo",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isNotEqualTo",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        }
    ],
    "set": [
        {
            "method":    "isEmpty"
        },{
            "method":    "isNotEmpty"
        },{
            "method":    "containsOnlyNulls"
        },{
            "method":    "isNull"
        },{
            "method":    "isNotNull"
        },{
            "method":    "isSame",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isNotSame",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "contains",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "contains",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "doesNotContain",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "doesNotContain",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "hasSize",
            "interface": [{
                "type": "Integer", "name": "expected"
            }]
        },{
            "method":    "hasSameSizeAs",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "hasSameSizeAs",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "containsAnyOf",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "containsAnyOf",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "containsExactlyInAnyOrder",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "containsExactlyInAnyOrder",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "containsOnly",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "isEqualTo",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isNotEqualTo",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        }
    ],
    "exception": [
        {
            "method":    "isNull"
        },{
            "method":    "isNotNull"
        },{
            "method":    "isSame",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isNotSame",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isEqualTo",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isNotEqualTo",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isIn",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "isIn",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "hasMessage",
            "interface": [{
                "type": "String", "name": "message"
            }]
        },{
            "method":    "hasCause"
        },{
            "method":    "hasNoCause"
        }
    ],
    "string": [
        {
            "method":    "isNull"
        },{
            "method":    "isNotNull"
        },{
            "method":    "isSame",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isNotSame",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isEqualTo",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isNotEqualTo",
            "interface": [{
                "type": "Object", "name": "expected"
            }]
        },{
            "method":    "isIn",
            "interface": [{
                "type": "List<Object>", "name": "expected"
            }]
        },{
            "method":    "isIn",
            "interface": [{
                "type": "Set<Object>", "name": "expected"
            }]
        },{
            "method":    "isAllLowerCase"
        },{
            "method":    "isAllUpperCase"
        },{
            "method":    "isAlpha"
        },{
            "method":    "isAlphaSpace"
        },{
            "method":    "isAlphanumeric"
        },{
            "method":    "isAlphanumericSpace"
        },{
            "method":    "isAsciiPrintable"
        },{
            "method":    "isNumeric"
        },{
            "method":    "isNumericSpace"
        },{
            "method":    "isWhitespace"
        },{
            "method":    "isBlank"
        },{
            "method":    "isEmpty"
        },{
            "method":    "isNotBlank"
        },{
            "method":    "isNotEmpty"
        },{
            "method":    "containsWhitespace"
        },{
            "method":    "contains",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "containsAny",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "containsIgnoreCase",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "containsNone",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "containsOnly",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "endsWith",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "endsWithIgnoreCase",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "equalsIgnoreCase",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "startsWith",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "startsWithIgnoreCase",
            "interface": [{
                "type": "String", "name": "expected"
            }]
        },{
            "method":    "hasLineCount",
            "interface": [{
                "type": "Integer", "name": "expected"
            }]
        }
    ]
}>
<#assign navigators = [
    {
        "delegatingType":  "Integer",
        "originatingType": "Set",
        "delegations":    delegations.integer
    },{
        "delegatingType":  "Integer",
        "originatingType": "List",
        "delegations":    delegations.integer
    },{
        "delegatingType":  "Integer",
        "originatingType": "Map",
        "delegations":    delegations.integer
    },{
        "delegatingType":  "Integer",
        "originatingType": "String",
        "delegations":    delegations.integer
    },{
        "delegatingType":  "Set<Object>",
        "originatingType": "Map",
        "delegations":    delegations.set
    },{
        "delegatingType":  "List<Object>",
        "originatingType": "Map",
        "delegations":    delegations.list
    },{
        "delegatingType":  "List<Object>",
        "originatingType": "SObject",
        "delegations":    delegations.list
    },{
        "delegatingType":  "Integer",
        "originatingType": "Blob",
        "delegations":     delegations.integer
    },{
        "delegatingType":  "Exception",
        "originatingType": "Exception",
        "delegations":     delegations.exception,
        "navigators": [{
            "name":        "cause",
            "method":      "getCause",
            "returnType":  "Exception"
        },{
            "name":        "rootCause",
            "method":      "getCause",
            "util":        "ExceptionUtil.getRootCause",
            "returnType":  "Exception"
        },{
            "name":        "message",
            "method":      "getMessage",
            "returnType":  "String"
        }]
    },{
        "delegatingType":  "String",
        "originatingType": "Exception",
        "delegations":     delegations.string
    }
]>
<#list navigators as n>
<@com.apexClass className="${n.delegatingType?keep_before('<')}Assert${n.originatingType}Navigator" path="/classes/"/>
/**
 * @description Navigator between `${n.originatingType}` and `${n.delegatingType}`
 */
global class ${n.delegatingType?keep_before("<")}Assert${n.originatingType}Navigator {
    private ${n.delegatingType} actual;
    private ${n.delegatingType?keep_before("<")}Assert assertDelegate;
    private ${n.originatingType}Assert originAssert;

    /**
     * @description Constructs an instance with an actual `${n.delegatingType}` value. Use `andThen()` to continue asserting on `${n.originatingType}`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global ${n.delegatingType?keep_before("<")}Assert${n.originatingType}Navigator(${n.delegatingType} actual, ${n.originatingType}Assert originAssert) {
        this.actual = actual;
        assertDelegate = new ${n.delegatingType?keep_before("<")}Assert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `${n.originatingType}`.
     */
    global ${n.originatingType}Assert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `${n.originatingType}`.
     * @see ${n.delegatingType?keep_before('<')}Assert${n.originatingType}Navigator.andThen()
     */
    global ${n.originatingType}Assert back() {
        return andThen();
    }

<#list n.delegations as nd>
    /**
     * @see ${n.delegatingType?keep_before("<")}Assert.${nd.method}(<#if (nd.interface??)><#list nd.interface as ndi>${ndi.type?keep_before("<")}<#sep>, </#list></#if>)
     */
    global ${n.delegatingType?keep_before("<")}Assert${n.originatingType}Navigator ${nd.method}(<#if (nd.interface??)><#list nd.interface as ndi>${ndi.type} ${ndi.name}<#sep>, </#list></#if>) {
        assertDelegate.${nd.method}(<#if (nd.interface??)><#list nd.interface as ndi>${ndi.name}<#sep>, </#list></#if>);
        return this;
    }
<#sep>

</#list>
<#if (n.navigators??)>
<#list n.navigators as nav>
    /**
     * @see ${nav.returnType?keep_before("<")}Assert.${nav.method}()
     */
    global ${nav.returnType?keep_before("<")}Assert${n.originatingType}Navigator ${nav.name}() {
        return new ${nav.returnType?keep_before("<")}Assert${n.originatingType}Navigator(<#if (nav.util??)>${nav.util}(</#if>actual.${nav.method}()<#if (nav.util??)>)</#if>, originAssert);
    }
<#sep>

</#list></#if>
}
</#list>
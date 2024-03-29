<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<#assign delegations = {
    "number": [
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
                "type": "%SELF%", "name": "fromInclusive"
            },{
                "type": "%SELF%", "name": "toInclusive"
            }]
        },{
            "method":    "isStrictlyBetween",
            "interface": [{
                "type": "%SELF%", "name": "fromExclusive"
            },{
                "type": "%SELF%", "name": "toExclusive"
            }]
        },{
            "method":    "isEqualTo",
            "interface": [{
                "type": "%SELF%", "name": "expected"
            }]
        },{
            "method":    "isNotEqualTo",
            "interface": [{
                "type": "%SELF%", "name": "expected"
            }]
        },{
            "method":    "isLessThan",
            "interface": [{
                "type": "%SELF%", "name": "expected"
            }]
        },{
            "method":    "isLessThanOrEqualTo",
            "interface": [{
                "type": "%SELF%", "name": "expected"
            }]
        },{
            "method":    "isGreaterThan",
            "interface": [{
                "type": "%SELF%", "name": "expected"
            }]
        },{
            "method":    "isGreaterThanOrEqualTo",
            "interface": [{
                "type": "%SELF%", "name": "expected"
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
    ],
    "id": [
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
            "method":    "isSObjectType",
            "interface": [{
                "type": "Schema.SObjectType", "name": "sObjectType"
            }]
        }
    ],
    "datetime": [
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
            "method":    "isBetween",
            "interface": [{
                "type": "%SELF%", "name": "fromInclusive"
            },{
                "type": "%SELF%", "name": "toInclusive"
            }]
        },{
            "method":    "isStrictlyBetween",
            "interface": [{
                "type": "%SELF%", "name": "fromExclusive"
            },{
                "type": "%SELF%", "name": "toExclusive"
            }]
        },{
            "method":    "isAfterOrEqualTo",
            "interface": [{
                "type": "%SELF%", "name": "expected"
            }]
        },{
            "method":    "isAfter",
            "interface": [{
                "type": "%SELF%", "name": "expected"
            }]
        },{
            "method":    "isBefore",
            "interface": [{
                "type": "%SELF%", "name": "expected"
            }]
        },{
            "method":    "isBeforeOrEqualTo",
            "interface": [{
                "type": "%SELF%", "name": "expected"
            }]
        }
    ],
    "boolean": [
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
        }{
            "method":    "isTrue"
        },{
            "method":    "isFalse"
        }
    ]
}>
<#assign navigators = [
    {
        "delegatingType":  "Integer",
        "originatingType": "Set",
        "delegations":    delegations.number
    },{
        "delegatingType":  "Integer",
        "originatingType": "List",
        "delegations":    delegations.number
    },{
        "delegatingType":  "Integer",
        "originatingType": "List<Database.DeleteResult>",
        "delegations":    delegations.number
    },{
        "delegatingType":  "List<Object>",
        "originatingType": "List<Database.DeleteResult>",
        "delegations":    delegations.list
    },{
        "delegatingType":  "Integer",
        "originatingType": "List<Database.SaveResult>",
        "delegations":    delegations.number
    },{
        "delegatingType":  "List<Object>",
        "originatingType": "List<Database.SaveResult>",
        "delegations":    delegations.list
    },{
        "delegatingType":  "Integer",
        "originatingType": "List<Database.UndeleteResult>",
        "delegations":    delegations.number
    },{
        "delegatingType":  "List<Object>",
        "originatingType": "List<Database.UndeleteResult>",
        "delegations":    delegations.list
    },{
        "delegatingType":  "Integer",
        "originatingType": "List<Database.UpsertResult>",
        "delegations":    delegations.number
    },{
        "delegatingType":  "List<Object>",
        "originatingType": "List<Database.UpsertResult>",
        "delegations":    delegations.list
    },{
        "delegatingType":  "Integer",
        "originatingType": "Map",
        "delegations":    delegations.number
    },{
        "delegatingType":  "Integer",
        "originatingType": "String",
        "delegations":    delegations.number
    },{
        "delegatingType":  "Long",
        "originatingType": "String",
        "delegations":    delegations.number
    },{
        "delegatingType":  "Decimal",
        "originatingType": "String",
        "delegations":    delegations.number
    },{
        "delegatingType":  "Double",
        "originatingType": "String",
        "delegations":    delegations.number
    },{
        "delegatingType":  "Id",
        "originatingType": "String",
        "delegations":    delegations.id
    },{
        "delegatingType":  "Datetime",
        "originatingType": "String",
        "delegations":    delegations.datetime
    },{
        "delegatingType":  "Date",
        "originatingType": "String",
        "delegations":    delegations.datetime
    },{
        "delegatingType":  "Boolean",
        "originatingType": "String",
        "delegations":    delegations.boolean
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
        "delegations":     delegations.number
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
<@com.apexClass className="${com.navigatorClass(n.delegatingType, n.originatingType)}" path="${com.classFilePath(n.originatingType)}"/>
/**
 * @description Navigator between `${n.originatingType}` and `${n.delegatingType}`
 */
global class ${com.navigatorClass(n.delegatingType, n.originatingType)} {
    private ${n.delegatingType} actual;
    private ${com.classPrefix(n.delegatingType)}Assert assertDelegate;
    private ${com.classPrefix(n.originatingType)}Assert originAssert;

    /**
     * @description Constructs an instance with an actual `${n.delegatingType}` value. Use `andThen()` to continue asserting on `${n.originatingType}`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global ${com.navigatorClass(n.delegatingType, n.originatingType)}(${n.delegatingType} actual, ${com.classPrefix(n.originatingType)}Assert originAssert) {
        this.actual = actual;
        assertDelegate = new ${com.classPrefix(n.delegatingType)}Assert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `${n.originatingType}`.
     */
    global ${com.classPrefix(n.originatingType)}Assert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `${n.originatingType}`.
     * @see ${com.navigatorClass(n.delegatingType, n.originatingType)}.andThen()
     */
    global ${com.classPrefix(n.originatingType)}Assert back() {
        return andThen();
    }

<#list n.delegations as nd>
    /**
     * @see ${com.classPrefix(n.delegatingType)}Assert.${nd.method}(<#if (nd.interface??)><#list nd.interface as ndi>${ndi.type?keep_before("<")?replace("%SELF%", n.delegatingType)}<#sep>, </#list></#if>)
     */
    global ${com.navigatorClass(n.delegatingType, n.originatingType)} ${nd.method}(<#if (nd.interface??)><#list nd.interface as ndi>${ndi.type?replace("%SELF%", n.delegatingType)} ${ndi.name}<#sep>, </#list></#if>) {
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
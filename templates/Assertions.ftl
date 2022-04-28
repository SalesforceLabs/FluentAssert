<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<#assign supportedAsserts = [
    {"type":"Boolean",     "asserts": ["IsTrue", "IsFalse"]},
    {"type":"Decimal",     "isNumber": true},
    {"type":"Double",      "isNumber": true},
    {"type":"Integer",     "isNumber": true},
    {"type":"Long",        "isNumber": true},
    {"type":"Id",          "asserts": ["IsSObjectType"]},
    {"type":"Object"},
    {"type":"Set<Object>", "isCollection": true, "asserts": ["Contains", "DoesNotContain", "ContainsAnyOf", "ContainsExactlyInAnyOrder", "ContainsOnly", "ContainsOnlyNulls"],
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        }]},
    {"type":"List<Object>", "isCollection": true, "asserts": ["Contains", "DoesNotContain", "ContainsAnyOf", "ContainsExactlyInAnyOrder", "ContainsExactly", "ContainsSequence", "DoesNotContainSequence", "ContainsSubsequence", "DoesNotContainSubsequence", "IsSorted", "ContainsOnly", "ContainsOnlyOnce", "ContainsOnlyNulls"],
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        }]},
    {"type":"Date",         "isDatetime": true, "asserts": ["IsToday"]},
    {"type":"Datetime",     "isDatetime": true},
    {"type":"Time",         "isDatetime": true, "comparableHelper":"TimeUtil.toMillisecondsOfDay"},
    {"type":"String",       "asserts": ["StringDelegates", "HasLength", "HasLineCount"],
        "navigators": [{
            "name": "length",
            "value": "actual.length()",
            "returnType": "Integer"
        },{
            "name": "lineCount",
            "value": "String.isBlank(actual) ? 0 : actual.split('\\n').size()",
            "returnType": "Integer"
        }
        ],
        "casters": [{
            "returnType": "Integer"
        },{
            "returnType": "Decimal"
        },{
            "returnType": "Boolean",
            "util":       true
        },{
            "returnType": "Date"
        },{
            "returnType": "Datetime"
        },{
            "returnType": "Long"
        },{
            "returnType": "Double"
        },{
            "returnType": "Id"
        }
        ]},
    {"type":"Map<Object, Object>", "isCollection": true, "isMap": true, "asserts": ["ContainsEntry", "DoesNotContainEntry"],
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        },{
            "name": "values",
            "value": "actual.values()",
            "returnType": "List"
        },{
            "name": "keys",
            "value": "actual.keySet()",
            "returnType": "Set"
        }
        ]},
    {"type":"Blob", "asserts": ["HasSize", "HasSameSizeAs"],
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        }
        ]},
    {"type":"SObject",     "asserts": ["Extracting", "HasErrors", "HasNoErrors", "IsClone", "IsRecordType"]},
    {"type":"Exception",   "asserts": ["HasMessage", "HasCause", "HasNoCause"],
        "navigators": [{
            "name": "cause",
            "value": "actual.getCause()",
            "returnType": "Exception"
        },{
            "name":       "rootCause",
            "value":      "ExceptionUtil.getRootCause(actual.getCause())",
            "returnType": "Exception"
        },{
            "name": "message",
            "value": "actual.getMessage()",
            "returnType": "String"
        }]}
]>
<#list supportedAsserts as supportedAssert>
    <#assign asserts = supportedAssert.asserts![] />
    <#assign asserts = asserts + ["IsNull", "IsNotNull", "IsEqualTo", "IsNotEqualTo", "IsSame", "IsNotSame"] />
    <#if supportedAssert.isCollection!false>
        <#assign asserts = asserts + ["HasSize", "HasSameSizeAs", "IsEmpty", "IsNotEmpty"] />
    </#if>
    <#if supportedAssert.isNumber!false>
        <#assign asserts = asserts + ["IsBetween", "IsStrictlyBetween", "IsNegative", "IsNotNegative", "IsPositive", "IsNotPositive", "IsOne", "IsZero", "IsNotZero", "IsLessThan", "IsLessThanOrEqualTo", "IsGreaterThan", "IsGreaterThanOrEqualTo"] />
    </#if>
    <#if supportedAssert.isDatetime!false>
        <#assign asserts = asserts + ["IsBetween", "IsStrictlyBetween", "IsAfterOrEqualTo", "IsAfter", "IsBefore", "IsBeforeOrEqualTo"] />
    </#if>
    <#if !supportedAssert.isCollection!false>
        <#assign asserts = asserts + ["IsIn"] />
    </#if>
<@com.apexClass className="${supportedAssert.type?keep_before('<')}Assert" path="/classes/${supportedAssert.type?keep_before('<')?lower_case}/"/>
/**
 * @description Holds asserts for `${supportedAssert.type?keep_before('<')}`s
 */
// PMD Suppression Justifications
// CyclomaticComplexity: It's the nature of assert classes to have a huge interface, meaning it'll be pretty complex
@SuppressWarnings('PMD.CyclomaticComplexity')
global class ${supportedAssert.type?keep_before('<')}Assert extends AssertBase {
    private ${supportedAssert.type} actual;

    /**
     * @description Constructs an instance with an actual `${supportedAssert.type?keep_before('<')}` value.
     * @param actual The actual value to assert against.
     */
    global ${supportedAssert.type?keep_before('<')}Assert(${supportedAssert.type} actual) {
        this.actual = actual;
    }

    <#if supportedAssert.navigators?has_content><#list supportedAssert.navigators?sort_by("name") as n>
    /**
     * @description Constructs a navigator that allows asserts on ${n.name}(). Use `andThen()` to continue asserting on `${supportedAssert.type?keep_before('<')}`.
     * @return a navigator on ${n.name}().
     */
    global ${n.returnType}Assert${supportedAssert.type?keep_before('<')}Navigator ${n.name}() {
        notNull(actual, 'actual');
        return new ${n.returnType}Assert${supportedAssert.type?keep_before('<')}Navigator(${n.value!"actual"}, this);
    }
    <#sep>

    </#list></#if>

    <#if supportedAssert.casters?has_content><#list supportedAssert.casters?sort_by("returnType") as cast>
    /**
     * @description Casts `actual` to `${cast.returnType}` using `${cast.returnType}.valueOf()` and returns the object to assert on. Any assert thrown will be rethrown as AssertException. Use `andThen()` to continue asserting on `String`.
     * @see ${cast.returnType}.valueOf()
     * @return a navigator on the casted value.
     */
    global ${cast.returnType}AssertStringNavigator as${cast.returnType}() {
        notNull(actual, 'actual');
        try {
            return new ${cast.returnType}AssertStringNavigator(${cast.returnType}<#if cast.util!false>Util</#if>.valueOf(actual), this);
        } catch (Exception e) {
            AssertException ae = new AssertException();
            ae.initCause(e);
            throw ae; 
        }
    }
    <#sep>

    </#list></#if>
    
    <#list asserts?sort as assert>
        <#include "/common/assertions/${assert}.ftl">
    <#sep>
 
    </#list>
}

</#list>
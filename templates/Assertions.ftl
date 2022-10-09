<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<#assign asserts = {
    "number":       ["IsBetween", "IsStrictlyBetween", "IsNegative", "IsNotNegative", "IsPositive", "IsNotPositive", "IsOne", "IsZero", "IsNotZero", "IsLessThan", "IsLessThanOrEqualTo", "IsGreaterThan", "IsGreaterThanOrEqualTo"],
    "collection":   ["IsEmpty", "IsNotEmpty", "HasSize", "HasSameSizeAs"],
    "iterable":     ["Contains", "DoesNotContain", "ContainsAnyOf", "ContainsExactlyInAnyOrder", "ContainsOnly", "ContainsOnlyNulls"],
    "datetime":     ["IsBetween", "IsStrictlyBetween", "IsAfterOrEqualTo", "IsAfter", "IsBefore", "IsBeforeOrEqualTo"],
    "listdbresult": ["IsAllSuccesses", "IsAllFailures"]
}>

<#assign supportedAsserts = [
    {"type":"Object"},
    {"type":"Boolean",             "asserts": ["IsTrue", "IsFalse"]},
    {"type":"Decimal",             "asserts": asserts.number},
    {"type":"Double",              "asserts": asserts.number},
    {"type":"Integer",             "asserts": asserts.number},
    {"type":"Long",                "asserts": asserts.number},
    {"type":"Id",                  "asserts": ["IsSObjectType"]},
    {"type":"Set<Object>",         "asserts": asserts.collection + asserts.iterable,
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        }]},
    {"type":"List<Object>",        "asserts": asserts.collection + asserts.iterable + ["ContainsExactly", "ContainsSequence", "DoesNotContainSequence", "ContainsSubsequence", "DoesNotContainSubsequence", "IsSorted", "ContainsOnlyOnce"],
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        }]},
    {"type":"Date",                "asserts": asserts.datetime + ["IsToday"]},
    {"type":"Datetime",            "asserts": asserts.datetime},
    {"type":"Time",                "asserts": asserts.datetime, "comparableHelper":"TimeUtil.toMillisecondsOfDay"},
    {"type":"String",              "asserts": ["StringDelegates", "HasLength", "HasLineCount"],
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
    {"type":"Map<Object, Object>", "asserts": asserts.collection + ["ContainsEntry", "DoesNotContainEntry"],
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
    {"type":"Blob",                "asserts": ["HasSize", "HasSameSizeAs"],
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        }
        ]},
    {"type":"SObject",             "asserts": ["Extracting", "HasErrors", "HasNoErrors", "IsClone", "IsRecordType"]},
    {"type":"Exception",           "asserts": ["HasMessage", "HasCause", "HasNoCause"],
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
        }]},
    {"type":"List<Database.DeleteResult>",     "asserts": asserts.listdbresult, "mixins": ["classes/db/AssertMixin"],
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        },{
            "name": "failureIds",
            "value": "failureIds",
            "returnType": "List<Object>"
        },{
            "name": "successIds",
            "value": "successIds",
            "returnType": "List<Object>"
        }]},
    {"type":"List<Database.SaveResult>", "asserts": asserts.listdbresult, "mixins": ["classes/db/AssertMixin"], 
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        },{
            "name": "failureIds",
            "value": "failureIds",
            "returnType": "List<Object>"
        },{
            "name": "successIds",
            "value": "successIds",
            "returnType": "List<Object>"
        }]},
    {"type":"List<Database.UndeleteResult>", "asserts": asserts.listdbresult, "mixins": ["classes/db/AssertMixin"], 
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        },{
            "name": "failureIds",
            "value": "failureIds",
            "returnType": "List<Object>"
        },{
            "name": "successIds",
            "value": "successIds",
            "returnType": "List<Object>"
        }]},
    {"type":"List<Database.UpsertResult>", "asserts": asserts.listdbresult, "mixins": ["classes/db/AssertMixin"], 
        "navigators": [{
            "name": "size",
            "value": "actual.size()",
            "returnType": "Integer"
        },{
            "name": "failureIds",
            "value": "failureIds",
            "returnType": "List<Object>"
        },{
            "name": "successIds",
            "value": "successIds",
            "returnType": "List<Object>"
        }]}
]>
<#list supportedAsserts as supportedAssert>
    <#assign asserts = supportedAssert.asserts![] />
    <#assign asserts = asserts + ["IsNull", "IsNotNull", "IsEqualTo", "IsNotEqualTo", "IsSame", "IsNotSame"] />
    <#if !supportedAssert.type?contains("<")>
        <#assign asserts = asserts + ["IsIn"] />
    </#if>
<@com.apexClass className="${com.classPrefix(supportedAssert.type)}Assert" path="${com.classFilePath(supportedAssert.type)}"/>
/**
 * @description Holds asserts for `${supportedAssert.type?keep_before('<')}`s
 */
// PMD Suppression Justifications
// CyclomaticComplexity: It's the nature of assert classes to have a huge interface, meaning it'll be pretty complex
@SuppressWarnings('PMD.CyclomaticComplexity')
global class ${com.classPrefix(supportedAssert.type)}Assert extends AssertBase {
    private ${supportedAssert.type} actual;
    <#list supportedAssert.mixins![] as m>
        <#include "${m}.ftl">
    </#list>

    /**
     * @description Constructs an instance with an actual `${supportedAssert.type}` value.
     * @param actual The actual value to assert against.
     */
    global ${com.classPrefix(supportedAssert.type)}Assert(${supportedAssert.type} actual) {
        this.actual = actual;
    }

    <#if supportedAssert.navigators?has_content><#list supportedAssert.navigators?sort_by("name") as n>
    /**
     * @description Constructs a navigator that allows asserts on ${n.name}(). Use `andThen()` to continue asserting on `${supportedAssert.type?keep_before('<')}`.
     * @return a navigator on ${n.name}().
     */
    global ${com.navigatorClass(n.returnType, supportedAssert.type)} ${n.name}() {
        notNull(actual, 'actual');
        return new ${com.navigatorClass(n.returnType, supportedAssert.type)}(${n.value!"actual"}, this);
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
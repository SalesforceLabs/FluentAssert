<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "common/apex-class.ftl" as com>
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
            "method": "size",
            "returnType": "Integer"
        }]},
    {"type":"List<Object>", "isCollection": true, "asserts": ["Contains", "DoesNotContain", "ContainsAnyOf", "ContainsExactlyInAnyOrder", "ContainsExactly", "ContainsSequence", "DoesNotContainSequence", "ContainsSubsequence", "DoesNotContainSubsequence", "IsSorted", "ContainsOnly", "ContainsOnlyOnce", "ContainsOnlyNulls"],
        "navigators": [{
            "name": "size",
            "method": "size",
            "returnType": "Integer"
        }]},
    {"type":"Date",         "isDatetime": true, "asserts": ["IsToday"]},
    {"type":"Datetime",     "isDatetime": true},
    {"type":"Time",         "isDatetime": true, "comparableHelper":"FATimeUtil.toMillisecondsOfDay"},
    {"type":"String",       "asserts": ["StringDelegates", "HasLength"],
        "navigators": [{
            "name": "length",
            "method": "length",
            "returnType": "Integer"
        }
        ]},
    {"type":"Map<Object, Object>", "isCollection": true, "isMap": true, "asserts": ["ContainsEntry", "DoesNotContainEntry"],
        "navigators": [{
            "name": "size",
            "method": "size",
            "returnType": "Integer"
        },{
            "name": "values",
            "method": "values",
            "returnType": "List"
        },{
            "name": "keys",
            "method": "keySet",
            "returnType": "Set"
        }
        ]},
    {"type":"Blob", "asserts": ["HasSize", "HasSameSizeAs"],
        "navigators": [{
            "name": "size",
            "method": "size",
            "returnType": "Integer"
        }
        ]}
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
<@com.apexClass className="${classPrefix}${supportedAssert.type?keep_before('<')}Assert" path="/classes/"/>
/**
 * @description Holds asserts for `${supportedAssert.type?keep_before('<')}`s
 */
public class ${classPrefix}${supportedAssert.type?keep_before('<')}Assert extends ${classPrefix}<#if supportedAssert.isCollection!false><#if !(supportedAssert.isMap!false)>Collection</#if></#if>AssertBase {
    private ${supportedAssert.type} actual;

    /**
     * @description Constructs an instance with an actual `${supportedAssert.type?keep_before('<')}` value.
     * @param actual The actual value to assert against.
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert(${supportedAssert.type} actual) {
        this.actual = actual;
    }
    <#if supportedAssert.navigators?has_content><#list supportedAssert.navigators?sort_by("name") as n>

    /**
     * @description Constructs a navigator that allows asserts on ${n.name}(). Use `back()` to get back to asserts on `${supportedAssert.type?keep_before('<')}`.
     * @return a navigator on ${n.name}().
     */
    public ${classPrefix}${n.returnType}Assert${supportedAssert.type?keep_before('<')}Navigator ${n.name}() {
        notNull(actual, 'actual');
        return new ${classPrefix}${n.returnType}Assert${supportedAssert.type?keep_before('<')}Navigator(actual.${n.method}(), this);
    }
    </#list></#if>
    <#list asserts?sort as assert>

    <#include "/common/assertions/${assert}.ftl">
    </#list>
}
</#list>
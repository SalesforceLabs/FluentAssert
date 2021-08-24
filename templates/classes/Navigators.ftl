<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../common/apex-class.ftl" as com>
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
        "delegatingType":  "Integer",
        "originatingType": "Blob",
        "delegations":     delegations.integer
    }
]>
<#list navigators as n>
<@com.apexClass className="${classPrefix}${n.delegatingType?keep_before('<')}Assert${n.originatingType}Navigator" path="/classes/"/>
/**
 * @description Navigator between `${n.originatingType}` and `${n.delegatingType}`
 */
public class ${classPrefix}${n.delegatingType?keep_before("<")}Assert${n.originatingType}Navigator {
    private ${classPrefix}${n.delegatingType?keep_before("<")}Assert assertDelegate;
    private ${classPrefix}${n.originatingType}Assert originAssert;

    /**
     * @description Constructs an instance with an actual `${n.delegatingType}` value. Use `back()` to go back to `${n.originatingType}`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    public ${classPrefix}${n.delegatingType?keep_before("<")}Assert${n.originatingType}Navigator(${n.delegatingType} actual, ${classPrefix}${n.originatingType}Assert originAssert) {
        assertDelegate = new ${classPrefix}${n.delegatingType?keep_before("<")}Assert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `${n.originatingType}`.
     */
    public ${classPrefix}${n.originatingType}Assert back() {
        return originAssert;
    }

<#list n.delegations as nd>
    /**
     * @see ${classPrefix}${n.delegatingType?keep_before("<")}Assert.${nd.method}(<#if (nd.interface??)><#list nd.interface as ndi>${ndi.type?keep_before("<")}<#sep>, </#list></#if>)
     */
    public ${classPrefix}${n.delegatingType?keep_before("<")}Assert${n.originatingType}Navigator ${nd.method}(<#if (nd.interface??)><#list nd.interface as ndi>${ndi.type} ${ndi.name}<#sep>, </#list></#if>) {
        assertDelegate.${nd.method}(<#if (nd.interface??)><#list nd.interface as ndi>${ndi.name}<#sep>, </#list></#if>);
        return this;
    }
<#sep>

</#list>
}
</#list>
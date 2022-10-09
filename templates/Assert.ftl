<#ftl strip_whitespace=true >
<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign supportedAsserts = [
    "Integer",
    "Boolean",
    "Long",
    "Decimal",
    "Double",
    "List<Object>",
    "Set<Object>",
    "Id",
    "Object",
    "Date",
    "Datetime",
    "Time",
    "String",
    "Map<Object, Object>",
    "Blob",
    "SObject",
    "Exception",
    "List<Database.DeleteResult>",
    "List<Database.SaveResult>",
    "List<Database.UndeleteResult>",
    "List<Database.UpsertResult>"
]>
<@pp.dropOutputFile />
<@com.apexClass className="Assert" path="/classes/"/>
/**
 * @description Better fluent asserts that takes (some...) of the pain away from unit testing in Apex.
 */
global inherited sharing class Assert {
<#list supportedAsserts?sort as type>
    /**
     * @description Fluent assert on `${type}`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `${type}`
     */
    global static ${com.classPrefix(type)}Assert that(${type} actual) {
        return new ${com.classPrefix(type)}Assert(actual);
    }
</#list>
}
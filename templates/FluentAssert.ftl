<#--
  - Copyright (c) 2021, salesforce.com, inc.
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
    "Blob"
]>
<@pp.dropOutputFile />
<@com.apexClass className="FluentAssert" path="/classes/"/>
/**
 * @description Better fluent asserts that takes (some...) of the pain away from unit testing in Apex.
 */
public inherited sharing class FluentAssert {
<#list supportedAsserts?sort as type>
    /**
     * @description Fluent assert on `${type?keep_before('<')}`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `${type?keep_before('<')}`
     */
    public static ${classPrefix}${type?keep_before('<')}Assert that(${type} actual) {
        return new ${classPrefix}${type?keep_before('<')}Assert(actual);
    }
<#sep>

</#list>

    /**
     * @description Custom exception that will be thrown if any asserts fail.
     */
    public class AssertException extends Exception {}
}
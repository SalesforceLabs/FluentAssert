<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign collectionDataTypes = {
    "list": {"assertAgainst": ["List<Object>", "Set<Object>"]},
    "set":  {"assertAgainst": ["List<Object>", "Set<Object>"]},
    "map":  {"assertAgainst": ["Map<Object, Object>"]},
    "blob": {"assertAgainst": ["Blob"]}
}>
<#assign collectionDataTypeName = 'collectionDataTypes.${supportedAssert.type?lower_case?keep_before("<")}'>
<#list (collectionDataTypeName?eval).assertAgainst as cdt>
    /**
     * @description Verifies that the actual has same size as expected.
     * @param expected list to compare size against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual doesn't have the same size as expected
     */
    global ${com.classPrefix(supportedAssert.type)}Assert hasSameSizeAs(${cdt} expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        return hasSize(expected.size());
    }
</#list>
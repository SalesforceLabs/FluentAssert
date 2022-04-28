<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual is sorted. Implementation will create a new list, sort it and use that against actual.
     * Be aware that sorting is done acording to Apex Developer guide (https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_collections_lists_sorting.htm).
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if actual is not sorted
     */
    global ${supportedAssert.type?keep_before('<')}Assert isSorted() {
        notNull(actual, 'actual');

        List<Object> expected = new List<Object>(actual);
        expected.sort();

        return containsExactly(expected);
    }
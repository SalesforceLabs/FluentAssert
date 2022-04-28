<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that size of actual is equal to expected.
     * @param expected expected size of actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if size of actual is not equal
     */
    global ${supportedAssert.type?keep_before('<')}Assert hasSize(Integer expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual.size() == expected, 'Was expecting size of actual list to be {0}', new List<Object> {expected});
        return this;
    }
<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Asserts that `actual` was caused by another `Exception`.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is not `true`.
     */
    global ${supportedAssert.type?keep_before('<')}Assert hasCause() {
        notNull(actual, 'actual');
        assert(actual.getCause() != null, 'Expecting {0} to have no cause', new List<Object> {actual});
        return this;
    }
<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual value is non negative (positive or equal zero).
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if actual is negative
     */
    global ${supportedAssert.type?keep_before('<')}Assert isNotNegative() {
        notNull(actual, 'actual');
        assert(actual >= 0, 'Expecting {0} to be non negative (positive or equal zero)', new List<Object> {actual});
        return this;
    }
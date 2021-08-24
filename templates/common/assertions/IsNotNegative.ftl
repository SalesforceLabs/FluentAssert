<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual value is non negative (positive or equal zero).
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is negative
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert isNotNegative() {
        notNull(actual, 'actual');
        if(actual >= 0) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {0} to be non negative (positive or equal zero)', new List<Object> {actual}));
    }

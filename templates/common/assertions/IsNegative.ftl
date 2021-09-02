<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual value is negative.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not negative
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert isNegative() {
        notNull(actual, 'actual');
        assert(actual < 0, 'Expecting {0} to be negative', new List<Object> {actual});
        return this;
    }
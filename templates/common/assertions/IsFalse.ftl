<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Asserts that `actual` is `false`.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is not `false`.
     */
    global ${supportedAssert.type?keep_before('<')}Assert isFalse() {
        notNull(actual, 'actual');
        isEqualTo(false);
        return this;
    }
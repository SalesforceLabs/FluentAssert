<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is equal to `expected`.
     */
    global ${supportedAssert.type?keep_before('<')}Assert isNotEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual != expected, 'Expecting {0} and {1} not to be equal', new List<Object> {expected, actual});
        return this;
    }
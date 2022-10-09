 <#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
   /**
     * @description Verifies that `actual` contains only elements from `expected` in any given order. Dublicates are NOT ignored.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual is has unexpected or missing values.
     */
    global ${com.classPrefix(supportedAssert.type)}Assert containsOnlyOnce(List<Object> expected) {
        notNull(actual,    'actual');
        notEmpty(expected, 'expected');
        assert(ListContainsUtil.containsOnlyOnce(expected, actual), 'Was expecting actual to contain {0} only once, but found {1} had dublicates', new List<Object>{expected, actual});
        return this;
    }
<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that actual contains only null elements and nothing else.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is empty or contains non-null values
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert containsOnlyNulls() {
        notEmpty(actual, 'actual');
        assert(${classPrefix}IteratorUtil.containsOnlyNulls(actual.iterator()), 'Expecting actual to contain only null, but found values', new List<Object>());
        return this;
    }
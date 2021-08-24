<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual contains the given values, in any order.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if expected values are not in actual list
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert contains(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertContains(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual contains the given values, in any order.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if expected values are not in actual list
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert contains(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertContains(expected.iterator());
        return this;
    }

    protected override Boolean actualContains(Object expected) {
        return actual.contains(expected);
    }

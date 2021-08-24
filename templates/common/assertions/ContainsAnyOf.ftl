<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual contains at least one of the given values.
     * @param expected elements to be checked against actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't have any elements of expected
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert containsAnyOf(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        isNotEmpty();

        assertContainsAnyOf(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual contains at least one of the given values.
     * @param expected elements to be checked against actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't have any elements of expected
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert containsAnyOf(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertContainsAnyOf(expected.iterator());
        return this;
    }

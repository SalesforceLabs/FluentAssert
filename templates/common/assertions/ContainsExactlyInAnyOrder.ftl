<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual contains exactly the given values and nothing else, in any order.
     * @param expected elements expected in the actual list
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain exactly the elements from expected
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert containsExactlyInAnyOrder(List<Object> expected) {
        notEmpty(expected, 'expected');
        hasSameSizeAs(expected);
        contains(expected);
        return this;
    }

    /**
     * @description Verifies that the actual contains exactly the given values and nothing else, in any order.
     * @param expected elements expected in the actual list
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain exactly the elements from expected
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert containsExactlyInAnyOrder(Set<Object> expected) {
        notEmpty(expected, 'expected');
        hasSameSizeAs(expected);
        contains(expected);
        return this;
    }

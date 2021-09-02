<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#list ["List", "Set"] as colType>
    /**
     * @description Verifies that the actual does not contain the given values.
     * @param expected elements not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual did contain any of the values
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert doesNotContain(${colType}<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertDoesNotContain(expected.iterator());
        return this;
    }
<#sep>

</#list>
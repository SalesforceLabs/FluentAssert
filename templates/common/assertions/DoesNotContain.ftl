<#--
  - Copyright (c) 2021, Salesforce Inc.
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
     * @throws AssertException if actual did contain any of the values
     */
    global ${supportedAssert.type?keep_before('<')}Assert doesNotContain(${colType}<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        assert(!${supportedAssert.type?keep_before('<')}ContainsUtil.contains(expected.iterator(), actual), 'Was expecting actual not to contain {0}', new List<Object> {expected});
        return this;
    }
<#sep>

</#list>
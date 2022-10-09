<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#list ["List", "Set"] as colType>
    /**
     * @description Verifies that the actual contains at least one of the given values.
     * @param expected elements to be checked against actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws AssertException if actual doesn't have any elements of expected
     */
    global ${com.classPrefix(supportedAssert.type)}Assert containsAnyOf(${colType}<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        isNotEmpty();
        assert(${supportedAssert.type?keep_before('<')}ContainsUtil.containsAnyOf(expected.iterator(), actual), 'Was expecting actual list at least one of {0}', new List<Object> {expected});
        return this;
    }

<#sep>

</#list>
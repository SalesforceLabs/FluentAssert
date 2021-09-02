<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#list ["List", "Set"] as colType>
    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws FluentAssert.AssertException if actual is not in expectedIn
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert isIn(${colType}<Object> expectedIn) {
        notNull(actual, 'actual');
        assert(expectedIn.contains(actual), 'Was expecting {0} to be in {1}', new List<Object> {actual, expectedIn});
        return this;
    }
<#sep>

</#list>
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

        for (Object o : actual) {
            if(o != null) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual to contain only null, but found {0}', new List<Object>{o}));
            }
        }

        return this;
    }

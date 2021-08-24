 <#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
   /**
     * @description Verifies that `actual` contains only elements from `expected` in any given order. Dublicates are NOT ignored.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is has unexpected or missing values.
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert containsOnlyOnce(List<Object> expected) {
        notNull(actual,   'actual');
        notEmpty(expected, 'expected');

        List<Object> notFound    = new List<Object>();
        List<Object> notOnlyOnce = new List<Object>();

        // Find dublicates from actual
        List<Object> duplicatesFromActual = new List<Object>();
        Set<Object> uniqueValues = new Set<Object>();
        for (Object a : actual) {
            if(uniqueValues.contains(a)) {
                duplicatesFromActual.add(a);
            }
            uniqueValues.add(a);
        }

        for (Object expectedOnlyOnce : expected) {
            if(!actualContains(expectedOnlyOnce)) {
                notFound.add(expectedOnlyOnce);
            } else if (duplicatesFromActual.contains(expectedOnlyOnce)) {
                notOnlyOnce.add(expectedOnlyOnce);
            }
        }

        if (!notFound.isEmpty() || !notOnlyOnce.isEmpty()) {
            throw new FluentAssert.AssertException(String.format('Was expecting actual to contain {0} only once, but found {1} as dublicates while not finding {2}', new List<Object>{expected, notOnlyOnce, notFound}));
        }

        return this;
    }

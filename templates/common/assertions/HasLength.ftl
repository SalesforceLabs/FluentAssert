 <#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
   /**
     * @description Verifies that the lenght of the String matches.
     * @param expected expected length of actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if length of actual is not as expected
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert hasLength(Integer expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        if(actual.length() != expected) {
            throw new FluentAssert.AssertException(String.format('Expecting actual to have a length of {0}, but found {1}', new List<Object> {actual.length(), expected}));
        }
        return this;
    }

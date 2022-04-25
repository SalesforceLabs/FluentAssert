 <#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
   /**
     * @description Verifies that the line count of the String matches. Blank Strings have a line count of zero.
     * @param expected expected line count of actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if length of actual is not as expected
     */
    global ${supportedAssert.type?keep_before('<')}Assert hasLineCount(Integer expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        Integer actualLineCount = String.isBlank(actual) ? 0 : actual.split('\\n').size();
        assert(actualLineCount == expected, 'Expecting actual to have a line count of {0}, but found {1}', new List<Object> {actualLineCount, expected});
        return this;
    }
<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual does not contain the given subsequence, a subsequence is defined by an ordered sequence of values with possibly extra values between them.
     * @param expected subsequence not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual contains the subsequence
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert doesNotContainSubsequence(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        Integer subsequenceIndex = 0;
        Integer subsequenceStartIndex = 0;

        for (Integer index = 0; index < actual.size(); index++) {
            Object actualNext = actual[index];
            Object subsequenceNext = expected[subsequenceIndex];
            if (actualNext.equals(subsequenceNext)) {
                if (subsequenceIndex == 0) {
                    subsequenceStartIndex = index;
                }
                subsequenceIndex++;
            }
            if (subsequenceIndex == expected.size()) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual not to contain the subsequence {0}', new List<Object> {expected}));
            }
        }
        return this;
    }

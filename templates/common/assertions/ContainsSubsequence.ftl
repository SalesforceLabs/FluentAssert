<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual contains the given subsequence in the correct order (possibly with other values between them).
     * @param expected subsequence to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain subsequence
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert containsSubsequence(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        Iterator<Object> actualIterator = actual.iterator();
        Integer subsequenceIndex = 0;
        while (actualIterator.hasNext() && subsequenceIndex < expected.size()) {
            Object actualNext = actualIterator.next();
            Object subsequenceNext = expected[subsequenceIndex];
            if (actualNext.equals(subsequenceNext)) {
                subsequenceIndex++;
            }
        }

        if (subsequenceIndex < expected.size()) {
            throw new FluentAssert.AssertException(String.format('Was expecting actual to contain the subsequence {0}', new List<Object> {expected}));
        }
        return this;
    }

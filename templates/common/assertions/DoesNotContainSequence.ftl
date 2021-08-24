<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual does not contain the given sequence, a sequence is defined by an ordered sequence of values without extra values between them.
     * @param expected elements not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual contains the sequence
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert doesNotContainSequence(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        for (Integer i = 0; i < actual.size(); i++) {
            if(containsSequenceAtIndex(expected, i)) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual to contain the sequence {0}', new List<Object> {expected}));
            }
        }
        return this;
    }

<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual contains the given sequence in the correct order and without extra values between the sequence values.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain the sequence from expected
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert containsSequence(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        assert(${classPrefix}ListSequenceUtil.containsSequence(actual, expected), 'Was expecting actual to contain the sequence {0}', new List<Object> {expected});
        return this;
    }
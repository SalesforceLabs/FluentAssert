<#--
  - Copyright (c) 2021, Salesforce Inc.
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
     * @throws AssertException if actual contains the sequence
     */
    global ${com.classPrefix(supportedAssert.type)}Assert doesNotContainSequence(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        assert(!ListSequenceUtil.containsSequence(expected, actual), 'Was expecting actual not to contain the sequence {0}', new List<Object> {expected});
        return this;
    }
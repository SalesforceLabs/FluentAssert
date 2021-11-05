<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual contains exactly the given values and nothing else, in order.
     * @param expected elements to be contained in actual ini order
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws AssertException if actual doesn't contain exactly all elements from expected
     */
    global ${supportedAssert.type?keep_before('<')}Assert containsExactly(List<Object> expected) {
        notEmpty(expected, 'expected');
        hasSameSizeAs(expected);

        for (Integer i = 0; i < expected.size(); i++) {
            assert(expected[i] == actual[i], 'Was expecting actual and expected elements at index {0} to match. Expected: {1}. Actual {2}', new List<Object> {i, expected[i], actual[i]});
        }
        return this;
    }

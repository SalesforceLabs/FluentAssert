 <#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
   /**
     * @description Verifies that the SObject is a clone
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if SObject is a clone
     */
    global ${supportedAssert.type?keep_before('<')}Assert isClone() {
        notNull(actual, 'actual');
        assert(actual.isClone(), 'Expecting actual to be a clone', new List<String>());
        return this;
    }
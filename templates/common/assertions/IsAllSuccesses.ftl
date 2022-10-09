<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Asserts that `actual` is all successes.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual has at least one failed result.
     */
    global ${com.classPrefix(supportedAssert.type)}Assert isAllsuccesses() {
        notNull(actual, 'actual');
        notEmpty(actual, 'actual');
        assert(successResults.size() == actual.size(), 'Found {0} successes in {0} results', new List<Object>{successResults.size(), actual.size()});
        return this;
    }
<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Asserts that `actual` is all failures.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual has at least one successful result.
     */
    global ${com.classPrefix(supportedAssert.type)}Assert isAllFailures() {
        notNull(actual, 'actual');
        notEmpty(actual, 'actual');
        assert(failureResults.size() == actual.size(), 'Found {0} failures in {0} results', new List<Object>{failureResults.size(), actual.size()});
        return this;
    }
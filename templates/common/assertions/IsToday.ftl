<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Asserts that `actual` is today.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is not today.
     */
    global ${com.classPrefix(supportedAssert.type)}Assert isToday() {
        notNull(actual, 'actual');
        return isEqualTo(Date.today());
    }
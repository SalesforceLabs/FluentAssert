<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Asserts that `actual` has message `message`.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is not `true`.
     */
    global ${com.classPrefix(supportedAssert.type)}Assert hasMessage(String message) {
        notNull(actual, 'actual');
        assert(actual.getMessage() == message, 'Expecting {0} to have message, {1}', new List<Object> {actual, message});
        return this;
    }
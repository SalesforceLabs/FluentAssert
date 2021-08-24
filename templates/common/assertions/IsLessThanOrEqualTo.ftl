<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual value is less than or equal to expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is not less than or equal to expected
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert isLessThanOrEqualTo(${supportedAssert.type} expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        if(<#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>actual<#if supportedAssert.comparableHelper?has_content>)</#if> <= <#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>expected<#if supportedAssert.comparableHelper?has_content>)</#if>) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {1} to be less than or equal to {0}', new List<Object> {expected, actual}));
    }

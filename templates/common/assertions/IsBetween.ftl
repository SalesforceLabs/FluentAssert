<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual value is in [start, end] range (start included, end included).
     * @param fromInclusive start (included) of range to assert against
     * @param toInclusive end (included) of range to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual, fromInclusive and/or toInclusive is null
     * @throws AssertException if actual is not between [start, end]
     */
    global ${com.classPrefix(supportedAssert.type)}Assert isBetween(${supportedAssert.type} fromInclusive, ${supportedAssert.type} toInclusive) {
        notNull(actual, 'actual');
        notNull(fromInclusive, 'fromInclusive');
        notNull(toInclusive, 'toInclusive');
        assert((<#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>actual<#if supportedAssert.comparableHelper?has_content>)</#if> >= <#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>fromInclusive<#if supportedAssert.comparableHelper?has_content>)</#if> && <#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>actual<#if supportedAssert.comparableHelper?has_content>)</#if> <= <#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>toInclusive<#if supportedAssert.comparableHelper?has_content>)</#if>), 'Expecting {2} to be within range [{0}:{1}] both included', new List<Object> {fromInclusive, toInclusive, actual});
        return this;
    }
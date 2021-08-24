<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual value is in ]start, end[ range (start excluded, end excluded).
     * @param fromExclusive start (excluded) of range to assert against
     * @param toExclusive end (excluded) of range to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual, fromExclusive and/or toExclusive is null
     * @throws FluentAssert.AssertException if actual is not between [start, end]
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert isStrictlyBetween(${supportedAssert.type} fromExclusive, ${supportedAssert.type} toExclusive) {
        notNull(actual, 'actual');
        notNull(fromExclusive, 'fromExclusive');
        notNull(toExclusive, 'toExclusive');
        if(<#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>actual<#if supportedAssert.comparableHelper?has_content>)</#if> > <#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>fromExclusive<#if supportedAssert.comparableHelper?has_content>)</#if> && <#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>actual<#if supportedAssert.comparableHelper?has_content>)</#if> < <#if supportedAssert.comparableHelper?has_content>${supportedAssert.comparableHelper}(</#if>toExclusive<#if supportedAssert.comparableHelper?has_content>)</#if>) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {2} to be within range ]{0}:{1}[ both excluded', new List<Object> {fromExclusive, toExclusive, actual}));
    }

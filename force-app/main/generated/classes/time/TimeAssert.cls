/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Time`s
 */
// PMD Suppression Justifications
// CyclomaticComplexity: It's the nature of assert classes to have a huge interface, meaning it'll be pretty complex
@SuppressWarnings('PMD.CyclomaticComplexity')
global class TimeAssert extends AssertBase {
    private Time actual;

    /**
     * @description Constructs an instance with an actual `Time` value.
     * @param actual The actual value to assert against.
     */
    global TimeAssert(Time actual) {
        this.actual = actual;
    }


    
    /**
     * @description Verifies that the actual value is after expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual is not after or equal to expected
     */
    global TimeAssert isAfter(Time expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert((TimeUtil.toMillisecondsOfDay(actual) > TimeUtil.toMillisecondsOfDay(expected)), 'Expecting {1} to be after {0}', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is after or equal to expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual is not after or equal to expected
     */
    global TimeAssert isAfterOrEqualTo(Time expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert((TimeUtil.toMillisecondsOfDay(actual) >= TimeUtil.toMillisecondsOfDay(expected)), 'Expecting {1} to be after or equal to {0}', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is before expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual is not after or equal to expected
     */
    global TimeAssert isBefore(Time expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert((TimeUtil.toMillisecondsOfDay(actual) < TimeUtil.toMillisecondsOfDay(expected)), 'Expecting {1} to be before {0}', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is before or equal to expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual is not after or equal to expected
     */
    global TimeAssert isBeforeOrEqualTo(Time expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert((TimeUtil.toMillisecondsOfDay(actual) <= TimeUtil.toMillisecondsOfDay(expected)), 'Expecting {1} to be before or equal to {0}', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is in [start, end] range (start included, end included).
     * @param fromInclusive start (included) of range to assert against
     * @param toInclusive end (included) of range to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual, fromInclusive and/or toInclusive is null
     * @throws AssertException if actual is not between [start, end]
     */
    global TimeAssert isBetween(Time fromInclusive, Time toInclusive) {
        notNull(actual, 'actual');
        notNull(fromInclusive, 'fromInclusive');
        notNull(toInclusive, 'toInclusive');
        assert((TimeUtil.toMillisecondsOfDay(actual) >= TimeUtil.toMillisecondsOfDay(fromInclusive) && TimeUtil.toMillisecondsOfDay(actual) <= TimeUtil.toMillisecondsOfDay(toInclusive)), 'Expecting {2} to be within range [{0}:{1}] both included', new List<Object> {fromInclusive, toInclusive, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not equal to `expected`.
     */
    global TimeAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual == expected, 'Expecting {0} and {1} to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws AssertException if actual is not in expectedIn
     */
    global TimeAssert isIn(List<Object> expectedIn) {
        notNull(actual, 'actual');
        assert(expectedIn.contains(actual), 'Was expecting {1} to be in {0}', new List<Object> {expectedIn, actual});
        return this;
    }

    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws AssertException if actual is not in expectedIn
     */
    global TimeAssert isIn(Set<Object> expectedIn) {
        notNull(actual, 'actual');
        assert(expectedIn.contains(actual), 'Was expecting {1} to be in {0}', new List<Object> {expectedIn, actual});
        return this;
    }
 
    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is equal to `expected`.
     */
    global TimeAssert isNotEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual != expected, 'Expecting {0} and {1} not to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not null.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is null.
     */
    global TimeAssert isNotNull() {
        assert(actual != null, 'Expecting {0} not to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not same (part of memory) as `expected`.
     */
    global TimeAssert isNotSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual !== expected, 'Expecting {0} and {1} not to be same', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is null.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is not null.
     */
    global TimeAssert isNull() {
        assert(actual == null, 'Expecting {0} to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not is same (part of memory) as `expected`.
     */
    global TimeAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual === expected, 'Expecting {0} and {1} to be same', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is in ]start, end[ range (start excluded, end excluded).
     * @param fromExclusive start (excluded) of range to assert against
     * @param toExclusive end (excluded) of range to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual, fromExclusive and/or toExclusive is null
     * @throws AssertException if actual is not between [start, end]
     */
    global TimeAssert isStrictlyBetween(Time fromExclusive, Time toExclusive) {
        notNull(actual, 'actual');
        notNull(fromExclusive, 'fromExclusive');
        notNull(toExclusive, 'toExclusive');
        assert((TimeUtil.toMillisecondsOfDay(actual) > TimeUtil.toMillisecondsOfDay(fromExclusive) && TimeUtil.toMillisecondsOfDay(actual) < TimeUtil.toMillisecondsOfDay(toExclusive)), 'Expecting {2} to be within range ]{0}:{1}[ both excluded', new List<Object> {fromExclusive, toExclusive, actual});
        return this;
    }}


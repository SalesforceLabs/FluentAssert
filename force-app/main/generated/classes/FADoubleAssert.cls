/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Double`s
 */
public class FADoubleAssert extends FAAssertBase {
    private Double actual;

    /**
     * @description Constructs an instance with an actual `Double` value.
     * @param actual The actual value to assert against.
     */
    public FADoubleAssert(Double actual) {
        this.actual = actual;
    }

    
    /**
     * @description Verifies that the actual value is in [start, end] range (start included, end included).
     * @param fromInclusive start (included) of range to assert against
     * @param toInclusive end (included) of range to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual, fromInclusive and/or toInclusive is null
     * @throws FluentAssert.AssertException if actual is not between [start, end]
     */
    public FADoubleAssert isBetween(Double fromInclusive, Double toInclusive) {
        notNull(actual, 'actual');
        notNull(fromInclusive, 'fromInclusive');
        notNull(toInclusive, 'toInclusive');
        assert((actual >= fromInclusive && actual <= toInclusive), 'Expecting {2} to be within range [{0}:{1}] both included', new List<Object> {fromInclusive, toInclusive, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not equal to `expected`.
     */
    public FADoubleAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual == expected, 'Expecting {0} and {1} to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is greater than
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is not greater than expected
     */
    public FADoubleAssert isGreaterThan(Double expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert((actual > expected), 'Expecting {1} to be greater than {0}', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is greater than or equal to expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is not greater than or equal to expected
     */
    public FADoubleAssert isGreaterThanOrEqualTo(Double expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert((actual >= expected), 'Expecting {1} to be greater than or equal to {0}', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws FluentAssert.AssertException if actual is not in expectedIn
     */
    public FADoubleAssert isIn(List<Object> expectedIn) {
        notNull(actual, 'actual');
        assert(expectedIn.contains(actual), 'Was expecting {0} to be in {1}', new List<Object> {actual, expectedIn});
        return this;
    }

    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws FluentAssert.AssertException if actual is not in expectedIn
     */
    public FADoubleAssert isIn(Set<Object> expectedIn) {
        notNull(actual, 'actual');
        assert(expectedIn.contains(actual), 'Was expecting {0} to be in {1}', new List<Object> {actual, expectedIn});
        return this;
    }
 
   /**
     * @description Verifies that the actual value is less than expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is not less than to expected
     */
    public FADoubleAssert isLessThan(Double expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert((actual < expected), 'Expecting {1} to be less than {0}', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is less than or equal to expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is not less than or equal to expected
     */
    public FADoubleAssert isLessThanOrEqualTo(Double expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert((actual <= expected), 'Expecting {1} to be less than or equal to {0}', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is negative.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not negative
     */
    public FADoubleAssert isNegative() {
        notNull(actual, 'actual');
        assert(actual < 0, 'Expecting {0} to be negative', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is equal to `expected`.
     */
    public FADoubleAssert isNotEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual != expected, 'Expecting {0} and {1} not to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is non negative (positive or equal zero).
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is negative
     */
    public FADoubleAssert isNotNegative() {
        notNull(actual, 'actual');
        assert(actual >= 0, 'Expecting {0} to be non negative (positive or equal zero)', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is null.
     */
    public FADoubleAssert isNotNull() {
        assert(actual != null, 'Expecting {0} not to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is non positive (negative or equal zero).
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is positive
     */
    public FADoubleAssert isNotPositive() {
        notNull(actual, 'actual');
        assert(actual <= 0, 'Expecting {0} to be non positive (positive or equal zero)', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not same (part of memory) as `expected`.
     */
    public FADoubleAssert isNotSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual !== expected, 'Expecting {0} and {1} not to be same', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is not equal to zero.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is zero
     */
    public FADoubleAssert isNotZero() {
        return isNotEqualTo(0);
    } 
    /**
     * @description Asserts that `actual` is null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is not null.
     */
    public FADoubleAssert isNull() {
        assert(actual == null, 'Expecting {0} to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is equal to one.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not one
     */
    public FADoubleAssert isOne() {
        return isEqualTo(1);
    } 
    /**
     * @description Verifies that the actual value is positive.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not positive
     */
    public FADoubleAssert isPositive() {
        notNull(actual, 'actual');
        assert(actual > 0, 'Expecting {0} to be positive', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not is same (part of memory) as `expected`.
     */
    public FADoubleAssert isSame(Object expected) {
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
     * @throws FluentAssert.AssertException if actual is not between [start, end]
     */
    public FADoubleAssert isStrictlyBetween(Double fromExclusive, Double toExclusive) {
        notNull(actual, 'actual');
        notNull(fromExclusive, 'fromExclusive');
        notNull(toExclusive, 'toExclusive');
        assert((actual > fromExclusive && actual < toExclusive), 'Expecting {2} to be within range ]{0}:{1}[ both excluded', new List<Object> {fromExclusive, toExclusive, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is equal to zero.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not zero
     */
    public FADoubleAssert isZero() {
        return isEqualTo(0);
    }}


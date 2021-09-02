/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Decimal`s
 */
public class FADecimalAssert extends FAAssertBase {
    private Decimal actual;

    /**
     * @description Constructs an instance with an actual `Decimal` value.
     * @param actual The actual value to assert against.
     */
    public FADecimalAssert(Decimal actual) {
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
    public FADecimalAssert isBetween(Decimal fromInclusive, Decimal toInclusive) {
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
    public FADecimalAssert isEqualTo(Object expected) {
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
    public FADecimalAssert isGreaterThan(Decimal expected) {
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
    public FADecimalAssert isGreaterThanOrEqualTo(Decimal expected) {
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
    public FADecimalAssert isIn(List<Object> expectedIn) {
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
    public FADecimalAssert isIn(Set<Object> expectedIn) {
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
    public FADecimalAssert isLessThan(Decimal expected) {
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
    public FADecimalAssert isLessThanOrEqualTo(Decimal expected) {
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
    public FADecimalAssert isNegative() {
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
    public FADecimalAssert isNotEqualTo(Object expected) {
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
    public FADecimalAssert isNotNegative() {
        notNull(actual, 'actual');
        assert(actual >= 0, 'Expecting {0} to be non negative (positive or equal zero)', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is null.
     */
    public FADecimalAssert isNotNull() {
        assert(actual != null, 'Expecting {0} not to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is non positive (negative or equal zero).
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is positive
     */
    public FADecimalAssert isNotPositive() {
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
    public FADecimalAssert isNotSame(Object expected) {
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
    public FADecimalAssert isNotZero() {
        return isNotEqualTo(0);
    } 
    /**
     * @description Asserts that `actual` is null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is not null.
     */
    public FADecimalAssert isNull() {
        assert(actual == null, 'Expecting {0} to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Verifies that the actual value is equal to one.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not one
     */
    public FADecimalAssert isOne() {
        return isEqualTo(1);
    } 
    /**
     * @description Verifies that the actual value is positive.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not positive
     */
    public FADecimalAssert isPositive() {
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
    public FADecimalAssert isSame(Object expected) {
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
    public FADecimalAssert isStrictlyBetween(Decimal fromExclusive, Decimal toExclusive) {
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
    public FADecimalAssert isZero() {
        return isEqualTo(0);
    }}


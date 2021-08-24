/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Long`s
 */
public class FALongAssert extends FAAssertBase {
    private Long actual;

    /**
     * @description Constructs an instance with an actual `Long` value.
     * @param actual The actual value to assert against.
     */
    public FALongAssert(Long actual) {
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
    public FALongAssert isBetween(Long fromInclusive, Long toInclusive) {
        notNull(actual, 'actual');
        notNull(fromInclusive, 'fromInclusive');
        notNull(toInclusive, 'toInclusive');
        if(actual >= fromInclusive && actual <= toInclusive) {
            return this;
        }

        throw new FluentAssert.AssertException(String.format('Expecting {2} to be within range [{0}:{1}] both included', new List<Object> {fromInclusive, toInclusive, actual}));
    }

    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not equal to `expected`.
     */
    public FALongAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        if(actual != expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be equal', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual value is greater than
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is not greater than expected
     */
    public FALongAssert isGreaterThan(Long expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        if(actual > expected) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {1} to be greater than {0}', new List<Object> {expected, actual}));
    }

    /**
     * @description Verifies that the actual value is greater than or equal to expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is not greater than or equal to expected
     */
    public FALongAssert isGreaterThanOrEqualTo(Long expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        if(actual >= expected) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {1} to be greater than or equal to {0}', new List<Object> {expected, actual}));
    }

    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws FluentAssert.AssertException if actual is not in expectedIn
     */
    public FALongAssert isIn(Set<Object> expectedIn) {
        notNull(actual, 'actual');

        if(!expectedIn.contains(actual)) {
            throw new FluentAssert.AssertException(String.format('Was expecting {0} to be in {1}', new List<Object> {actual, expectedIn}));
        }
        return this;
    }
    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws FluentAssert.AssertException if actual is not in expectedIn
     */
    public FALongAssert isIn(List<Object> expectedIn) {
        notNull(actual, 'actual');

        if(!expectedIn.contains(actual)) {
            throw new FluentAssert.AssertException(String.format('Was expecting {0} to be in {1}', new List<Object> {actual, expectedIn}));
        }
        return this;
    }

   /**
     * @description Verifies that the actual value is less than expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is not less than to expected
     */
    public FALongAssert isLessThan(Long expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        if(actual < expected) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {1} to be less than {0}', new List<Object> {expected, actual}));
    }

    /**
     * @description Verifies that the actual value is less than or equal to expected
     * @param expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is not less than or equal to expected
     */
    public FALongAssert isLessThanOrEqualTo(Long expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        if(actual <= expected) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {1} to be less than or equal to {0}', new List<Object> {expected, actual}));
    }

    /**
     * @description Verifies that the actual value is negative.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not negative
     */
    public FALongAssert isNegative() {
        notNull(actual, 'actual');
        if(actual < 0) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {0} to be negative', new List<Object> {actual}));
    }

    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is equal to `expected`.
     */
    public FALongAssert isNotEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual == expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} not to be equal', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual value is non negative (positive or equal zero).
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is negative
     */
    public FALongAssert isNotNegative() {
        notNull(actual, 'actual');
        if(actual >= 0) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {0} to be non negative (positive or equal zero)', new List<Object> {actual}));
    }

    /**
     * @description Asserts that `actual` is not null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is null.
     */
    public FALongAssert isNotNull() {
        if(actual == null) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} not to be null', new List<Object> {actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual value is non positive (negative or equal zero).
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is positive
     */
    public FALongAssert isNotPositive() {
        notNull(actual, 'actual');
        if(actual <= 0) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {0} to be non positive (positive or equal zero)', new List<Object> {actual}));
    }

    /**
     * @description Asserts that `actual` is not same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not same (part of memory) as `expected`.
     */
    public FALongAssert isNotSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual === expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} not to be same', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual value is not equal to zero.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is zero
     */
    public FALongAssert isNotZero() {
        return isNotEqualTo(0);
    }

    /**
     * @description Asserts that `actual` is null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is not null.
     */
    public FALongAssert isNull() {
        if(actual != null) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} to be null', new List<Object> {actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual value is equal to one.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not one
     */
    public FALongAssert isOne() {
        return isEqualTo(1);
    }

    /**
     * @description Verifies that the actual value is positive.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not positive
     */
    public FALongAssert isPositive() {
        notNull(actual, 'actual');
        if(actual > 0) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {0} to be positive', new List<Object> {actual}));
    }

    /**
     * @description Asserts that `actual` is same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not is same (part of memory) as `expected`.
     */
    public FALongAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual !== expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be same', new List<Object> {expected, actual}));
        }
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
    public FALongAssert isStrictlyBetween(Long fromExclusive, Long toExclusive) {
        notNull(actual, 'actual');
        notNull(fromExclusive, 'fromExclusive');
        notNull(toExclusive, 'toExclusive');
        if(actual > fromExclusive && actual < toExclusive) {
            return this;
        }
        throw new FluentAssert.AssertException(String.format('Expecting {2} to be within range ]{0}:{1}[ both excluded', new List<Object> {fromExclusive, toExclusive, actual}));
    }

    /**
     * @description Verifies that the actual value is equal to zero.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not zero
     */
    public FALongAssert isZero() {
        return isEqualTo(0);
    }
}

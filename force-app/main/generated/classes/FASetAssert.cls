/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Set`s
 */
public class FASetAssert extends FACollectionAssertBase {
    private Set<Object> actual;

    /**
     * @description Constructs an instance with an actual `Set` value.
     * @param actual The actual value to assert against.
     */
    public FASetAssert(Set<Object> actual) {
        this.actual = actual;
    }

    /**
     * @description Constructs a navigator that allows asserts on size(). Use `back()` to get back to asserts on `Set`.
     * @return a navigator on size().
     */
    public FAIntegerAssertSetNavigator size() {
        notNull(actual, 'actual');
        return new FAIntegerAssertSetNavigator(actual.size(), this);
    }

    /**
     * @description Verifies that the actual contains the given values, in any order.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if expected values are not in actual list
     */
    public FASetAssert contains(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertContains(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual contains the given values, in any order.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if expected values are not in actual list
     */
    public FASetAssert contains(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertContains(expected.iterator());
        return this;
    }

    protected override Boolean actualContains(Object expected) {
        return actual.contains(expected);
    }

    /**
     * @description Verifies that the actual contains at least one of the given values.
     * @param expected elements to be checked against actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't have any elements of expected
     */
    public FASetAssert containsAnyOf(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        isNotEmpty();

        assertContainsAnyOf(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual contains at least one of the given values.
     * @param expected elements to be checked against actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't have any elements of expected
     */
    public FASetAssert containsAnyOf(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertContainsAnyOf(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual contains exactly the given values and nothing else, in any order.
     * @param expected elements expected in the actual list
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain exactly the elements from expected
     */
    public FASetAssert containsExactlyInAnyOrder(List<Object> expected) {
        notEmpty(expected, 'expected');
        hasSameSizeAs(expected);
        contains(expected);
        return this;
    }

    /**
     * @description Verifies that the actual contains exactly the given values and nothing else, in any order.
     * @param expected elements expected in the actual list
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain exactly the elements from expected
     */
    public FASetAssert containsExactlyInAnyOrder(Set<Object> expected) {
        notEmpty(expected, 'expected');
        hasSameSizeAs(expected);
        contains(expected);
        return this;
    }

    /**
     * @description Verifies that `actual` contains only elements from `expected` and nothing else.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is empty or contains non-null values
     */
    public FASetAssert containsOnly(List<Object> expected) {
        notNull(actual,   'actual');
        notEmpty(expected, 'expected');

        // Narrow unexpected values in reversed order first
        List<Object> unexpectedValues = new List<Object>(actual);
        for (Integer i = (unexpectedValues.size()-1) ; i>= 0 ; i--) {
            if(expected.contains(unexpectedValues[i])){
                unexpectedValues.remove(i);
            }
        } 

        // Likewise narrow missing values, also reversed
        List<Object> missingValues = new List<Object>(expected);
        for (Integer i = (missingValues.size()-1) ; i>= 0 ; i--) {
            if(actualContains(missingValues[i])){
                missingValues.remove(i);
            }
        }

        if (!unexpectedValues.isEmpty() || !missingValues.isEmpty()) {
            throw new FluentAssert.AssertException(String.format('Was expecting actual to contain only {0}, but found {1} while not finding {2}', new List<Object>{expected, unexpectedValues, missingValues}));
        }

        return this;
    }

    /**
     * @description Verifies that actual contains only null elements and nothing else.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is empty or contains non-null values
     */
    public FASetAssert containsOnlyNulls() {
        notEmpty(actual, 'actual');

        for (Object o : actual) {
            if(o != null) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual to contain only null, but found {0}', new List<Object>{o}));
            }
        }

        return this;
    }

    /**
     * @description Verifies that the actual does not contain the given values.
     * @param expected elements not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual did contain any of the values
     */
    public FASetAssert doesNotContain(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertDoesNotContain(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual does not contain the given values.
     * @param expected elements not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual did contain any of the values
     */
    public FASetAssert doesNotContain(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertDoesNotContain(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual has same size as expected.
     * @param expected list to compare size against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual doesn't have the same size as expected
     */
    public FASetAssert hasSameSizeAs(List<Object> expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        return hasSize(expected.size());
    }
    /**
     * @description Verifies that the actual has same size as expected.
     * @param expected list to compare size against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual doesn't have the same size as expected
     */
    public FASetAssert hasSameSizeAs(Set<Object> expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        return hasSize(expected.size());
    }

    /**
     * @description Verifies that size of actual is equal to expected.
     * @param expected expected size of actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if size of actual is not equal
     */
    public FASetAssert hasSize(Integer expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        if(actual.size() != expected) {
            throw new FluentAssert.AssertException(String.format('Was expecting size of actual list to be {0}', new List<Object> {expected}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual of values is empty.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not empty
     */
    public FASetAssert isEmpty() {
        notNull(actual, 'actual');
        if(!actual.isEmpty()) {
            throw new FluentAssert.AssertException('Was expecting actual list not to be empty');
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not equal to `expected`.
     */
    public FASetAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        if(actual != expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be equal', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual of values is not empty.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is empty
     */
    public FASetAssert isNotEmpty() {
        notNull(actual, 'actual');
        if(actual.isEmpty()) {
           throw new FluentAssert.AssertException('Was expecting actual list not to be empty');
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is equal to `expected`.
     */
    public FASetAssert isNotEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual == expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} not to be equal', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is not null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is null.
     */
    public FASetAssert isNotNull() {
        if(actual == null) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} not to be null', new List<Object> {actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is not same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not same (part of memory) as `expected`.
     */
    public FASetAssert isNotSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual === expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} not to be same', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is not null.
     */
    public FASetAssert isNull() {
        if(actual != null) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} to be null', new List<Object> {actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not is same (part of memory) as `expected`.
     */
    public FASetAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual !== expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be same', new List<Object> {expected, actual}));
        }
        return this;
    }
}

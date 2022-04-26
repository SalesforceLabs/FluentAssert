/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Set`s
 */
// PMD Suppression Justifications
// CyclomaticComplexity: It's the nature of assert classes to have a huge interface, meaning it'll be pretty complex
@SuppressWarnings('PMD.CyclomaticComplexity')
global class SetAssert extends AssertBase {
    private Set<Object> actual;

    /**
     * @description Constructs an instance with an actual `Set` value.
     * @param actual The actual value to assert against.
     */
    global SetAssert(Set<Object> actual) {
        this.actual = actual;
    }

    /**
     * @description Constructs a navigator that allows asserts on size(). Use `andThen()` to continue asserting on `Set`.
     * @return a navigator on size().
     */
    global IntegerAssertSetNavigator size() {
        notNull(actual, 'actual');
        return new IntegerAssertSetNavigator(actual.size(), this);
    }

    
    /**
     * @description Verifies that the actual contains the given values, in any order.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws AssertException if expected values are not in actual list
     */
    global SetAssert contains(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        assert(SetContainsUtil.contains(expected.iterator(), actual), 'Was expecting actual list to contain {0}', new List<Object> {expected});
        return this;
    }

    /**
     * @description Verifies that the actual contains the given values, in any order.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws AssertException if expected values are not in actual list
     */
    global SetAssert contains(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        assert(SetContainsUtil.contains(expected.iterator(), actual), 'Was expecting actual list to contain {0}', new List<Object> {expected});
        return this;
    }
 
    /**
     * @description Verifies that the actual contains at least one of the given values.
     * @param expected elements to be checked against actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws AssertException if actual doesn't have any elements of expected
     */
    global SetAssert containsAnyOf(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        isNotEmpty();
        assert(SetContainsUtil.containsAnyOf(expected.iterator(), actual), 'Was expecting actual list at least one of {0}', new List<Object> {expected});
        return this;
    }


    /**
     * @description Verifies that the actual contains at least one of the given values.
     * @param expected elements to be checked against actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws AssertException if actual doesn't have any elements of expected
     */
    global SetAssert containsAnyOf(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        isNotEmpty();
        assert(SetContainsUtil.containsAnyOf(expected.iterator(), actual), 'Was expecting actual list at least one of {0}', new List<Object> {expected});
        return this;
    }

 
    /**
     * @description Verifies that the actual contains exactly the given values and nothing else, in any order.
     * @param expected elements expected in the actual list
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws AssertException if actual doesn't contain exactly the elements from expected
     */
    global SetAssert containsExactlyInAnyOrder(List<Object> expected) {
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
     * @throws AssertException if actual doesn't contain exactly the elements from expected
     */
    global SetAssert containsExactlyInAnyOrder(Set<Object> expected) {
        notEmpty(expected, 'expected');
        hasSameSizeAs(expected);
        contains(expected);
        return this;
    }
 
    /**
     * @description Verifies that `actual` contains only elements from `expected` and nothing else.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual is empty or contains non-null values
     */
    global SetAssert containsOnly(List<Object> expected) {
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
            if(actual.contains(missingValues[i])){
                missingValues.remove(i);
            }
        }

        assert(unexpectedValues.isEmpty() && missingValues.isEmpty(), 'Was expecting actual to contain only {0}, but found {1} while not finding {2}', new List<Object>{expected, unexpectedValues, missingValues});
        return this;
    } 
    /**
     * @description Verifies that actual contains only null elements and nothing else.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if actual is empty or contains non-null values
     */
    global SetAssert containsOnlyNulls() {
        notEmpty(actual, 'actual');
        assert(IteratorUtil.containsOnlyNulls(actual.iterator()), 'Expecting actual to contain only null, but found values', new List<Object>());
        return this;
    } 
    /**
     * @description Verifies that the actual does not contain the given values.
     * @param expected elements not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws AssertException if actual did contain any of the values
     */
    global SetAssert doesNotContain(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        assert(!SetContainsUtil.contains(expected.iterator(), actual), 'Was expecting actual not to contain {0}', new List<Object> {expected});
        return this;
    }

    /**
     * @description Verifies that the actual does not contain the given values.
     * @param expected elements not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws AssertException if actual did contain any of the values
     */
    global SetAssert doesNotContain(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        assert(!SetContainsUtil.contains(expected.iterator(), actual), 'Was expecting actual not to contain {0}', new List<Object> {expected});
        return this;
    }
 
    /**
     * @description Verifies that the actual has same size as expected.
     * @param expected list to compare size against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual doesn't have the same size as expected
     */
    global SetAssert hasSameSizeAs(List<Object> expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        return hasSize(expected.size());
    }
    /**
     * @description Verifies that the actual has same size as expected.
     * @param expected list to compare size against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual doesn't have the same size as expected
     */
    global SetAssert hasSameSizeAs(Set<Object> expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        return hasSize(expected.size());
    }
 
    /**
     * @description Verifies that size of actual is equal to expected.
     * @param expected expected size of actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if size of actual is not equal
     */
    global SetAssert hasSize(Integer expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual.size() == expected, 'Was expecting size of actual list to be {0}', new List<Object> {expected});
        return this;
    } 
    /**
     * @description Verifies that the actual of values is empty.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if actual is not empty
     */
    global SetAssert isEmpty() {
        notNull(actual, 'actual');
        assert(actual.isEmpty(), 'Was expecting actual list not to be empty', new List<Object>());
        return this;
    } 
    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not equal to `expected`.
     */
    global SetAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual == expected, 'Expecting {0} and {1} to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual of values is not empty.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if actual is empty
     */
    global SetAssert isNotEmpty() {
        notNull(actual, 'actual');
        assert(!actual.isEmpty(), 'Was expecting actual list not to be empty but found {0}', new List<Object>{actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is equal to `expected`.
     */
    global SetAssert isNotEqualTo(Object expected) {
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
    global SetAssert isNotNull() {
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
    global SetAssert isNotSame(Object expected) {
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
    global SetAssert isNull() {
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
    global SetAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual === expected, 'Expecting {0} and {1} to be same', new List<Object> {expected, actual});
        return this;
    }}


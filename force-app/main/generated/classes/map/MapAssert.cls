/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Map`s
 */
// PMD Suppression Justifications
// CyclomaticComplexity: It's the nature of assert classes to have a huge interface, meaning it'll be pretty complex
@SuppressWarnings('PMD.CyclomaticComplexity')
global class MapAssert extends AssertBase {
    private Map<Object, Object> actual;

    /**
     * @description Constructs an instance with an actual `Map` value.
     * @param actual The actual value to assert against.
     */
    global MapAssert(Map<Object, Object> actual) {
        this.actual = actual;
    }

    /**
     * @description Constructs a navigator that allows asserts on keys(). Use `andThen()` to continue asserting on `Map`.
     * @return a navigator on keys().
     */
    global SetAssertMapNavigator keys() {
        notNull(actual, 'actual');
        return new SetAssertMapNavigator(actual.keySet(), this);
    }

    /**
     * @description Constructs a navigator that allows asserts on size(). Use `andThen()` to continue asserting on `Map`.
     * @return a navigator on size().
     */
    global IntegerAssertMapNavigator size() {
        notNull(actual, 'actual');
        return new IntegerAssertMapNavigator(actual.size(), this);
    }

    /**
     * @description Constructs a navigator that allows asserts on values(). Use `andThen()` to continue asserting on `Map`.
     * @return a navigator on values().
     */
    global ListAssertMapNavigator values() {
        notNull(actual, 'actual');
        return new ListAssertMapNavigator(actual.values(), this);
    }

    
    /**
     * @description Verifies that the actual contains the given entry.
     * @param key key to be contained in actual
     * @param vaulue value to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if expected entry was not found in map
     */
    global MapAssert containsEntry(Object key, Object value) {
        notNull(actual, 'actual');
        notNull(key, 'key');

        if(actual.containsKey(key)) {
            Object actualValue = actual.get(key);
            if(!actualValue.equals(value)) {
                throw new AssertException(String.format('Found an unexpected value for key, {0}. Found {1}, but expected {2}', new List<Object>{key, value, actualValue}));
            }
        } else {
            throw new AssertException(String.format('Was expecting actual to contain the key {0}, but was unable to find it', new List<Object>{key}));
        }
        return this;
    }
 
    /**
     * @description Verifies that the actual does not contains the given entry.
     * @param key key not to be contained in actual
     * @param vaulue not value to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or key is null
     * @throws AssertException if expected entry was found in map
     */
    global MapAssert doesNotContainEntry(Object key, Object value) {
        notNull(actual, 'actual');
        notNull(key, 'key');

        if(actual.containsKey(key)) {
            Object actualValue = actual.get(key);
            if(actualValue.equals(value)) {
                throw new AssertException(String.format('Found an an unexpected value for key, {0}, found {2}', new List<Object>{key, value, actualValue}));
            }
        }
        return this;
    } 
    /**
     * @description Verifies that the actual has same size as expected.
     * @param expected list to compare size against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual doesn't have the same size as expected
     */
    global MapAssert hasSameSizeAs(Map<Object, Object> expected) {
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
    global MapAssert hasSize(Integer expected) {
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
    global MapAssert isEmpty() {
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
    global MapAssert isEqualTo(Object expected) {
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
    global MapAssert isNotEmpty() {
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
    global MapAssert isNotEqualTo(Object expected) {
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
    global MapAssert isNotNull() {
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
    global MapAssert isNotSame(Object expected) {
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
    global MapAssert isNull() {
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
    global MapAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual === expected, 'Expecting {0} and {1} to be same', new List<Object> {expected, actual});
        return this;
    }}


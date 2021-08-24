/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Map`s
 */
public class FAMapAssert extends FAAssertBase {
    private Map<Object, Object> actual;

    /**
     * @description Constructs an instance with an actual `Map` value.
     * @param actual The actual value to assert against.
     */
    public FAMapAssert(Map<Object, Object> actual) {
        this.actual = actual;
    }

    /**
     * @description Constructs a navigator that allows asserts on keys(). Use `back()` to get back to asserts on `Map`.
     * @return a navigator on keys().
     */
    public FASetAssertMapNavigator keys() {
        notNull(actual, 'actual');
        return new FASetAssertMapNavigator(actual.keySet(), this);
    }

    /**
     * @description Constructs a navigator that allows asserts on size(). Use `back()` to get back to asserts on `Map`.
     * @return a navigator on size().
     */
    public FAIntegerAssertMapNavigator size() {
        notNull(actual, 'actual');
        return new FAIntegerAssertMapNavigator(actual.size(), this);
    }

    /**
     * @description Constructs a navigator that allows asserts on values(). Use `back()` to get back to asserts on `Map`.
     * @return a navigator on values().
     */
    public FAListAssertMapNavigator values() {
        notNull(actual, 'actual');
        return new FAListAssertMapNavigator(actual.values(), this);
    }

    /**
     * @description Verifies that the actual contains the given entry.
     * @param key key to be contained in actual
     * @param vaulue value to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if expected entry was not found in map
     */
    public FAMapAssert containsEntry(Object key, Object value) {
        notNull(actual, 'actual');
        notNull(key, 'key');

        if(actual.containsKey(key)) {
            Object actualValue = actual.get(key);
            if(!actualValue.equals(value)) {
                throw new FluentAssert.AssertException(String.format('Found an unexpected value for key, {0}. Found {1}, but expected {2}', new List<Object>{key, value, actualValue}));
            }
        } else {
            throw new FluentAssert.AssertException(String.format('Was expecting actual to contain the key {0}, but was unable to find it', new List<Object>{key}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual does not contains the given entry.
     * @param key key not to be contained in actual
     * @param vaulue not value to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or key is null
     * @throws FluentAssert.AssertException if expected entry was found in map
     */
    public FAMapAssert doesNotContainEntry(Object key, Object value) {
        notNull(actual, 'actual');
        notNull(key, 'key');

        if(actual.containsKey(key)) {
            Object actualValue = actual.get(key);
            if(actualValue.equals(value)) {
                throw new FluentAssert.AssertException(String.format('Found an an unexpected value for key, {0}, found {2}', new List<Object>{key, value, actualValue}));
            }
        }
        return this;
    }

    /**
     * @description Verifies that the actual has same size as expected.
     * @param expected list to compare size against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual doesn't have the same size as expected
     */
    public FAMapAssert hasSameSizeAs(Map<Object, Object> expected) {
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
    public FAMapAssert hasSize(Integer expected) {
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
    public FAMapAssert isEmpty() {
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
    public FAMapAssert isEqualTo(Object expected) {
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
    public FAMapAssert isNotEmpty() {
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
    public FAMapAssert isNotEqualTo(Object expected) {
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
    public FAMapAssert isNotNull() {
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
    public FAMapAssert isNotSame(Object expected) {
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
    public FAMapAssert isNull() {
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
    public FAMapAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual !== expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be same', new List<Object> {expected, actual}));
        }
        return this;
    }
}

/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Exception`s
 */
global class ExceptionAssert extends AssertBase {
    private Exception actual;

    /**
     * @description Constructs an instance with an actual `Exception` value.
     * @param actual The actual value to assert against.
     */
    global ExceptionAssert(Exception actual) {
        this.actual = actual;
    }

    /**
     * @description Constructs a navigator that allows asserts on cause(). Use `back()` to get back to asserts on `Exception`.
     * @return a navigator on cause().
     */
    global ExceptionAssertExceptionNavigator cause() {
        notNull(actual, 'actual');
        return new ExceptionAssertExceptionNavigator(actual.getCause(), this);
    }

    /**
     * @description Constructs a navigator that allows asserts on message(). Use `back()` to get back to asserts on `Exception`.
     * @return a navigator on message().
     */
    global StringAssertExceptionNavigator message() {
        notNull(actual, 'actual');
        return new StringAssertExceptionNavigator(actual.getMessage(), this);
    }

    /**
     * @description Constructs a navigator that allows asserts on rootCause(). Use `back()` to get back to asserts on `Exception`.
     * @return a navigator on rootCause().
     */
    global ExceptionAssertExceptionNavigator rootCause() {
        notNull(actual, 'actual');
        return new ExceptionAssertExceptionNavigator(ExceptionUtil.getRootCause(actual.getCause()), this);
    }
    
    /**
     * @description Asserts that `actual` was caused by another `Exception`.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is not `true`.
     */
    global ExceptionAssert hasCause() {
        notNull(actual, 'actual');
        assert(actual.getCause() != null, 'Expecting {0} to have no cause', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` has message `message`.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is not `true`.
     */
    global ExceptionAssert hasMessage(String message) {
        notNull(actual, 'actual');
        assert(actual.getMessage() == message, 'Expecting {0} to have message, {1}', new List<Object> {actual, message});
        return this;
    } 
    /**
     * @description Asserts that `actual` was not caused by another `Exception`.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is not `true`.
     */
    global ExceptionAssert hasNoCause() {
        notNull(actual, 'actual');
        assert(actual.getCause() == null, 'Expecting {0} to have no cause', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not equal to `expected`.
     */
    global ExceptionAssert isEqualTo(Object expected) {
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
    global ExceptionAssert isIn(List<Object> expectedIn) {
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
    global ExceptionAssert isIn(Set<Object> expectedIn) {
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
    global ExceptionAssert isNotEqualTo(Object expected) {
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
    global ExceptionAssert isNotNull() {
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
    global ExceptionAssert isNotSame(Object expected) {
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
    global ExceptionAssert isNull() {
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
    global ExceptionAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual === expected, 'Expecting {0} and {1} to be same', new List<Object> {expected, actual});
        return this;
    }}


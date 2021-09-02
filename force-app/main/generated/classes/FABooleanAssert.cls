/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Boolean`s
 */
public class FABooleanAssert extends FAAssertBase {
    private Boolean actual;

    /**
     * @description Constructs an instance with an actual `Boolean` value.
     * @param actual The actual value to assert against.
     */
    public FABooleanAssert(Boolean actual) {
        this.actual = actual;
    }

    
    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not equal to `expected`.
     */
    public FABooleanAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual == expected, 'Expecting {0} and {1} to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is `false`.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is not `false`.
     */
    public FABooleanAssert isFalse() {
        notNull(actual, 'actual');
        isEqualTo(false);
        return this;
    } 
    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws FluentAssert.AssertException if actual is not in expectedIn
     */
    public FABooleanAssert isIn(List<Object> expectedIn) {
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
    public FABooleanAssert isIn(Set<Object> expectedIn) {
        notNull(actual, 'actual');
        assert(expectedIn.contains(actual), 'Was expecting {0} to be in {1}', new List<Object> {actual, expectedIn});
        return this;
    }
 
    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is equal to `expected`.
     */
    public FABooleanAssert isNotEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual != expected, 'Expecting {0} and {1} not to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is null.
     */
    public FABooleanAssert isNotNull() {
        assert(actual != null, 'Expecting {0} not to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not same (part of memory) as `expected`.
     */
    public FABooleanAssert isNotSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual !== expected, 'Expecting {0} and {1} not to be same', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is not null.
     */
    public FABooleanAssert isNull() {
        assert(actual == null, 'Expecting {0} to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not is same (part of memory) as `expected`.
     */
    public FABooleanAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual === expected, 'Expecting {0} and {1} to be same', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is `true`.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is not `true`.
     */
    public FABooleanAssert isTrue() {
        notNull(actual, 'actual');
        isEqualTo(true);
        return this;
    }}


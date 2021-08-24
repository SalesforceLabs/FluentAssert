/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `Id`s
 */
public class FAIdAssert extends FAAssertBase {
    private Id actual;

    /**
     * @description Constructs an instance with an actual `Id` value.
     * @param actual The actual value to assert against.
     */
    public FAIdAssert(Id actual) {
        this.actual = actual;
    }

    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not equal to `expected`.
     */
    public FAIdAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        if(actual != expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be equal', new List<Object> {expected, actual}));
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
    public FAIdAssert isIn(Set<Object> expectedIn) {
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
    public FAIdAssert isIn(List<Object> expectedIn) {
        notNull(actual, 'actual');

        if(!expectedIn.contains(actual)) {
            throw new FluentAssert.AssertException(String.format('Was expecting {0} to be in {1}', new List<Object> {actual, expectedIn}));
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
    public FAIdAssert isNotEqualTo(Object expected) {
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
    public FAIdAssert isNotNull() {
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
    public FAIdAssert isNotSame(Object expected) {
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
    public FAIdAssert isNull() {
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
    public FAIdAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual !== expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be same', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the Id is for a given SObjectType
     * @param sObjectType The expected value to assert against.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or sObjectType is null
     * @throws FluentAssert.AssertException if actual is not the right SObjectType
     */
    public FAIdAssert isSObjectType(Schema.SObjectType sObjectType) {
        notNull(actual, 'actual');
        notNull(sObjectType, 'sObjectType');
        if(sObjectType != actual.getSobjectType()) {
            throw new FluentAssert.AssertException(String.format('Was expecting actual to be Id of type {0} but was {1}', new List<Object> {actual.getSobjectType().getDescribe().getName(), sObjectType.getDescribe().getName()}));
        }
        return this;
    }
}

/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `String` and `Date`
 */
global class DateAssertStringNavigator {
    private Date actual;
    private DateAssert assertDelegate;
    private StringAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Date` value. Use `andThen()` to continue asserting on `String`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global DateAssertStringNavigator(Date actual, StringAssert originAssert) {
        this.actual = actual;
        assertDelegate = new DateAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `String`.
     */
    global StringAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `String`.
     * @see DateAssertStringNavigator.andThen()
     */
    global StringAssert back() {
        return andThen();
    }

    /**
     * @see DateAssert.isNull()
     */
    global DateAssertStringNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see DateAssert.isNotNull()
     */
    global DateAssertStringNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see DateAssert.isSame(Object)
     */
    global DateAssertStringNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see DateAssert.isNotSame(Object)
     */
    global DateAssertStringNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see DateAssert.isEqualTo(Object)
     */
    global DateAssertStringNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see DateAssert.isNotEqualTo(Object)
     */
    global DateAssertStringNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see DateAssert.isIn(List)
     */
    global DateAssertStringNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see DateAssert.isIn(Set)
     */
    global DateAssertStringNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see DateAssert.isBetween(Date, Date)
     */
    global DateAssertStringNavigator isBetween(Date fromInclusive, Date toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see DateAssert.isStrictlyBetween(Date, Date)
     */
    global DateAssertStringNavigator isStrictlyBetween(Date fromExclusive, Date toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see DateAssert.isAfterOrEqualTo(Date)
     */
    global DateAssertStringNavigator isAfterOrEqualTo(Date expected) {
        assertDelegate.isAfterOrEqualTo(expected);
        return this;
    }

    /**
     * @see DateAssert.isAfter(Date)
     */
    global DateAssertStringNavigator isAfter(Date expected) {
        assertDelegate.isAfter(expected);
        return this;
    }

    /**
     * @see DateAssert.isBefore(Date)
     */
    global DateAssertStringNavigator isBefore(Date expected) {
        assertDelegate.isBefore(expected);
        return this;
    }

    /**
     * @see DateAssert.isBeforeOrEqualTo(Date)
     */
    global DateAssertStringNavigator isBeforeOrEqualTo(Date expected) {
        assertDelegate.isBeforeOrEqualTo(expected);
        return this;
    }
}

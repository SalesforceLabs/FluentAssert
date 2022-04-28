/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `String` and `Datetime`
 */
global class DatetimeAssertStringNavigator {
    private Datetime actual;
    private DatetimeAssert assertDelegate;
    private StringAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Datetime` value. Use `andThen()` to continue asserting on `String`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global DatetimeAssertStringNavigator(Datetime actual, StringAssert originAssert) {
        this.actual = actual;
        assertDelegate = new DatetimeAssert(actual);
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
     * @see DatetimeAssertStringNavigator.andThen()
     */
    global StringAssert back() {
        return andThen();
    }

    /**
     * @see DatetimeAssert.isNull()
     */
    global DatetimeAssertStringNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see DatetimeAssert.isNotNull()
     */
    global DatetimeAssertStringNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see DatetimeAssert.isSame(Object)
     */
    global DatetimeAssertStringNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see DatetimeAssert.isNotSame(Object)
     */
    global DatetimeAssertStringNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see DatetimeAssert.isEqualTo(Object)
     */
    global DatetimeAssertStringNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see DatetimeAssert.isNotEqualTo(Object)
     */
    global DatetimeAssertStringNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see DatetimeAssert.isIn(List)
     */
    global DatetimeAssertStringNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see DatetimeAssert.isIn(Set)
     */
    global DatetimeAssertStringNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see DatetimeAssert.isBetween(Datetime, Datetime)
     */
    global DatetimeAssertStringNavigator isBetween(Datetime fromInclusive, Datetime toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see DatetimeAssert.isStrictlyBetween(Datetime, Datetime)
     */
    global DatetimeAssertStringNavigator isStrictlyBetween(Datetime fromExclusive, Datetime toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see DatetimeAssert.isAfterOrEqualTo(Datetime)
     */
    global DatetimeAssertStringNavigator isAfterOrEqualTo(Datetime expected) {
        assertDelegate.isAfterOrEqualTo(expected);
        return this;
    }

    /**
     * @see DatetimeAssert.isAfter(Datetime)
     */
    global DatetimeAssertStringNavigator isAfter(Datetime expected) {
        assertDelegate.isAfter(expected);
        return this;
    }

    /**
     * @see DatetimeAssert.isBefore(Datetime)
     */
    global DatetimeAssertStringNavigator isBefore(Datetime expected) {
        assertDelegate.isBefore(expected);
        return this;
    }

    /**
     * @see DatetimeAssert.isBeforeOrEqualTo(Datetime)
     */
    global DatetimeAssertStringNavigator isBeforeOrEqualTo(Datetime expected) {
        assertDelegate.isBeforeOrEqualTo(expected);
        return this;
    }
}

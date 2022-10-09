/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `List<Database.UndeleteResult>` and `Integer`
 */
global class IntegerAssertListDBUndeleteNavigator {
    private Integer actual;
    private IntegerAssert assertDelegate;
    private ListUndeleteResultAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `andThen()` to continue asserting on `List<Database.UndeleteResult>`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global IntegerAssertListDBUndeleteNavigator(Integer actual, ListUndeleteResultAssert originAssert) {
        this.actual = actual;
        assertDelegate = new IntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `List<Database.UndeleteResult>`.
     */
    global ListUndeleteResultAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `List<Database.UndeleteResult>`.
     * @see IntegerAssertListDBUndeleteNavigator.andThen()
     */
    global ListUndeleteResultAssert back() {
        return andThen();
    }

    /**
     * @see IntegerAssert.isNegative()
     */
    global IntegerAssertListDBUndeleteNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isPositive()
     */
    global IntegerAssertListDBUndeleteNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNegative()
     */
    global IntegerAssertListDBUndeleteNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isNotPositive()
     */
    global IntegerAssertListDBUndeleteNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isOne()
     */
    global IntegerAssertListDBUndeleteNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see IntegerAssert.isZero()
     */
    global IntegerAssertListDBUndeleteNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNotZero()
     */
    global IntegerAssertListDBUndeleteNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNull()
     */
    global IntegerAssertListDBUndeleteNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNull()
     */
    global IntegerAssertListDBUndeleteNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see IntegerAssert.isBetween(Integer, Integer)
     */
    global IntegerAssertListDBUndeleteNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    global IntegerAssertListDBUndeleteNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isEqualTo(Integer)
     */
    global IntegerAssertListDBUndeleteNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isNotEqualTo(Integer)
     */
    global IntegerAssertListDBUndeleteNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThan(Integer)
     */
    global IntegerAssertListDBUndeleteNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThanOrEqualTo(Integer)
     */
    global IntegerAssertListDBUndeleteNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThan(Integer)
     */
    global IntegerAssertListDBUndeleteNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    global IntegerAssertListDBUndeleteNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(List)
     */
    global IntegerAssertListDBUndeleteNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(Set)
     */
    global IntegerAssertListDBUndeleteNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

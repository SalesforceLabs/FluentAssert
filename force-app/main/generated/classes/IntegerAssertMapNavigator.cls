/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Map` and `Integer`
 */
global class IntegerAssertMapNavigator {
    private Integer actual;
    private IntegerAssert assertDelegate;
    private MapAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `back()` to go back to `Map`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global IntegerAssertMapNavigator(Integer actual, MapAssert originAssert) {
        this.actual = actual;
        assertDelegate = new IntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `Map`.
     */
    global MapAssert back() {
        return originAssert;
    }

    /**
     * @see IntegerAssert.isNegative()
     */
    global IntegerAssertMapNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isPositive()
     */
    global IntegerAssertMapNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNegative()
     */
    global IntegerAssertMapNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isNotPositive()
     */
    global IntegerAssertMapNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isOne()
     */
    global IntegerAssertMapNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see IntegerAssert.isZero()
     */
    global IntegerAssertMapNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNotZero()
     */
    global IntegerAssertMapNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNull()
     */
    global IntegerAssertMapNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNull()
     */
    global IntegerAssertMapNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see IntegerAssert.isBetween(Integer, Integer)
     */
    global IntegerAssertMapNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    global IntegerAssertMapNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isEqualTo(Integer)
     */
    global IntegerAssertMapNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isNotEqualTo(Integer)
     */
    global IntegerAssertMapNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThan(Integer)
     */
    global IntegerAssertMapNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThanOrEqualTo(Integer)
     */
    global IntegerAssertMapNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThan(Integer)
     */
    global IntegerAssertMapNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    global IntegerAssertMapNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(List)
     */
    global IntegerAssertMapNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(Set)
     */
    global IntegerAssertMapNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `String` and `Double`
 */
global class DoubleAssertStringNavigator {
    private Double actual;
    private DoubleAssert assertDelegate;
    private StringAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Double` value. Use `andThen()` to continue asserting on `String`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global DoubleAssertStringNavigator(Double actual, StringAssert originAssert) {
        this.actual = actual;
        assertDelegate = new DoubleAssert(actual);
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
     * @see DoubleAssertStringNavigator.andThen()
     */
    global StringAssert back() {
        return andThen();
    }

    /**
     * @see DoubleAssert.isNegative()
     */
    global DoubleAssertStringNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see DoubleAssert.isPositive()
     */
    global DoubleAssertStringNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see DoubleAssert.isNotNegative()
     */
    global DoubleAssertStringNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see DoubleAssert.isNotPositive()
     */
    global DoubleAssertStringNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see DoubleAssert.isOne()
     */
    global DoubleAssertStringNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see DoubleAssert.isZero()
     */
    global DoubleAssertStringNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see DoubleAssert.isNotZero()
     */
    global DoubleAssertStringNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see DoubleAssert.isNull()
     */
    global DoubleAssertStringNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see DoubleAssert.isNotNull()
     */
    global DoubleAssertStringNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see DoubleAssert.isBetween(Double, Double)
     */
    global DoubleAssertStringNavigator isBetween(Double fromInclusive, Double toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see DoubleAssert.isStrictlyBetween(Double, Double)
     */
    global DoubleAssertStringNavigator isStrictlyBetween(Double fromExclusive, Double toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see DoubleAssert.isEqualTo(Double)
     */
    global DoubleAssertStringNavigator isEqualTo(Double expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see DoubleAssert.isNotEqualTo(Double)
     */
    global DoubleAssertStringNavigator isNotEqualTo(Double expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see DoubleAssert.isLessThan(Double)
     */
    global DoubleAssertStringNavigator isLessThan(Double expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see DoubleAssert.isLessThanOrEqualTo(Double)
     */
    global DoubleAssertStringNavigator isLessThanOrEqualTo(Double expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see DoubleAssert.isGreaterThan(Double)
     */
    global DoubleAssertStringNavigator isGreaterThan(Double expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see DoubleAssert.isGreaterThanOrEqualTo(Double)
     */
    global DoubleAssertStringNavigator isGreaterThanOrEqualTo(Double expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see DoubleAssert.isIn(List)
     */
    global DoubleAssertStringNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see DoubleAssert.isIn(Set)
     */
    global DoubleAssertStringNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `String` and `Decimal`
 */
global class DecimalAssertStringNavigator {
    private Decimal actual;
    private DecimalAssert assertDelegate;
    private StringAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Decimal` value. Use `andThen()` to continue asserting on `String`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global DecimalAssertStringNavigator(Decimal actual, StringAssert originAssert) {
        this.actual = actual;
        assertDelegate = new DecimalAssert(actual);
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
     * @see DecimalAssertStringNavigator.andThen()
     */
    global StringAssert back() {
        return andThen();
    }

    /**
     * @see DecimalAssert.isNegative()
     */
    global DecimalAssertStringNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see DecimalAssert.isPositive()
     */
    global DecimalAssertStringNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see DecimalAssert.isNotNegative()
     */
    global DecimalAssertStringNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see DecimalAssert.isNotPositive()
     */
    global DecimalAssertStringNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see DecimalAssert.isOne()
     */
    global DecimalAssertStringNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see DecimalAssert.isZero()
     */
    global DecimalAssertStringNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see DecimalAssert.isNotZero()
     */
    global DecimalAssertStringNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see DecimalAssert.isNull()
     */
    global DecimalAssertStringNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see DecimalAssert.isNotNull()
     */
    global DecimalAssertStringNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see DecimalAssert.isBetween(Decimal, Decimal)
     */
    global DecimalAssertStringNavigator isBetween(Decimal fromInclusive, Decimal toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see DecimalAssert.isStrictlyBetween(Decimal, Decimal)
     */
    global DecimalAssertStringNavigator isStrictlyBetween(Decimal fromExclusive, Decimal toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see DecimalAssert.isEqualTo(Decimal)
     */
    global DecimalAssertStringNavigator isEqualTo(Decimal expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see DecimalAssert.isNotEqualTo(Decimal)
     */
    global DecimalAssertStringNavigator isNotEqualTo(Decimal expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see DecimalAssert.isLessThan(Decimal)
     */
    global DecimalAssertStringNavigator isLessThan(Decimal expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see DecimalAssert.isLessThanOrEqualTo(Decimal)
     */
    global DecimalAssertStringNavigator isLessThanOrEqualTo(Decimal expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see DecimalAssert.isGreaterThan(Decimal)
     */
    global DecimalAssertStringNavigator isGreaterThan(Decimal expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see DecimalAssert.isGreaterThanOrEqualTo(Decimal)
     */
    global DecimalAssertStringNavigator isGreaterThanOrEqualTo(Decimal expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see DecimalAssert.isIn(List)
     */
    global DecimalAssertStringNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see DecimalAssert.isIn(Set)
     */
    global DecimalAssertStringNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

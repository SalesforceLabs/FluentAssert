/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Map` and `Integer`
 */
public class FAIntegerAssertMapNavigator {
    private FAIntegerAssert assertDelegate;
    private FAMapAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `back()` to go back to `Map`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    public FAIntegerAssertMapNavigator(Integer actual, FAMapAssert originAssert) {
        assertDelegate = new FAIntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `Map`.
     */
    public FAMapAssert back() {
        return originAssert;
    }

    /**
     * @see FAIntegerAssert.isNegative()
     */
    public FAIntegerAssertMapNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isPositive()
     */
    public FAIntegerAssertMapNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNegative()
     */
    public FAIntegerAssertMapNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotPositive()
     */
    public FAIntegerAssertMapNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isOne()
     */
    public FAIntegerAssertMapNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see FAIntegerAssert.isZero()
     */
    public FAIntegerAssertMapNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotZero()
     */
    public FAIntegerAssertMapNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNull()
     */
    public FAIntegerAssertMapNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNull()
     */
    public FAIntegerAssertMapNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isBetween(Integer, Integer)
     */
    public FAIntegerAssertMapNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    public FAIntegerAssertMapNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isEqualTo(Integer)
     */
    public FAIntegerAssertMapNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotEqualTo(Integer)
     */
    public FAIntegerAssertMapNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThan(Integer)
     */
    public FAIntegerAssertMapNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThanOrEqualTo(Integer)
     */
    public FAIntegerAssertMapNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThan(Integer)
     */
    public FAIntegerAssertMapNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    public FAIntegerAssertMapNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(List)
     */
    public FAIntegerAssertMapNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(Set)
     */
    public FAIntegerAssertMapNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

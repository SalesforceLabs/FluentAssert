/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Set` and `Integer`
 */
public class FAIntegerAssertSetNavigator {
    private FAIntegerAssert assertDelegate;
    private FASetAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `back()` to go back to `Set`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    public FAIntegerAssertSetNavigator(Integer actual, FASetAssert originAssert) {
        assertDelegate = new FAIntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `Set`.
     */
    public FASetAssert back() {
        return originAssert;
    }

    /**
     * @see FAIntegerAssert.isNegative()
     */
    public FAIntegerAssertSetNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isPositive()
     */
    public FAIntegerAssertSetNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNegative()
     */
    public FAIntegerAssertSetNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotPositive()
     */
    public FAIntegerAssertSetNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isOne()
     */
    public FAIntegerAssertSetNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see FAIntegerAssert.isZero()
     */
    public FAIntegerAssertSetNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotZero()
     */
    public FAIntegerAssertSetNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNull()
     */
    public FAIntegerAssertSetNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNull()
     */
    public FAIntegerAssertSetNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isBetween(Integer, Integer)
     */
    public FAIntegerAssertSetNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    public FAIntegerAssertSetNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isEqualTo(Integer)
     */
    public FAIntegerAssertSetNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotEqualTo(Integer)
     */
    public FAIntegerAssertSetNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThan(Integer)
     */
    public FAIntegerAssertSetNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThanOrEqualTo(Integer)
     */
    public FAIntegerAssertSetNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThan(Integer)
     */
    public FAIntegerAssertSetNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    public FAIntegerAssertSetNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(List)
     */
    public FAIntegerAssertSetNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(Set)
     */
    public FAIntegerAssertSetNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

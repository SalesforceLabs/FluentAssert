/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `List` and `Integer`
 */
public class FAIntegerAssertListNavigator {
    private FAIntegerAssert assertDelegate;
    private FAListAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `back()` to go back to `List`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    public FAIntegerAssertListNavigator(Integer actual, FAListAssert originAssert) {
        assertDelegate = new FAIntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `List`.
     */
    public FAListAssert back() {
        return originAssert;
    }

    /**
     * @see FAIntegerAssert.isNegative()
     */
    public FAIntegerAssertListNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isPositive()
     */
    public FAIntegerAssertListNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNegative()
     */
    public FAIntegerAssertListNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotPositive()
     */
    public FAIntegerAssertListNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isOne()
     */
    public FAIntegerAssertListNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see FAIntegerAssert.isZero()
     */
    public FAIntegerAssertListNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotZero()
     */
    public FAIntegerAssertListNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNull()
     */
    public FAIntegerAssertListNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNull()
     */
    public FAIntegerAssertListNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isBetween(Integer, Integer)
     */
    public FAIntegerAssertListNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    public FAIntegerAssertListNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isEqualTo(Integer)
     */
    public FAIntegerAssertListNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotEqualTo(Integer)
     */
    public FAIntegerAssertListNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThan(Integer)
     */
    public FAIntegerAssertListNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThanOrEqualTo(Integer)
     */
    public FAIntegerAssertListNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThan(Integer)
     */
    public FAIntegerAssertListNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    public FAIntegerAssertListNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(List)
     */
    public FAIntegerAssertListNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(Set)
     */
    public FAIntegerAssertListNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

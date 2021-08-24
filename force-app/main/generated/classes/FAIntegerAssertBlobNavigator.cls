/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Blob` and `Integer`
 */
public class FAIntegerAssertBlobNavigator {
    private FAIntegerAssert assertDelegate;
    private FABlobAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `back()` to go back to `Blob`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    public FAIntegerAssertBlobNavigator(Integer actual, FABlobAssert originAssert) {
        assertDelegate = new FAIntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `Blob`.
     */
    public FABlobAssert back() {
        return originAssert;
    }

    /**
     * @see FAIntegerAssert.isNegative()
     */
    public FAIntegerAssertBlobNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isPositive()
     */
    public FAIntegerAssertBlobNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNegative()
     */
    public FAIntegerAssertBlobNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotPositive()
     */
    public FAIntegerAssertBlobNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isOne()
     */
    public FAIntegerAssertBlobNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see FAIntegerAssert.isZero()
     */
    public FAIntegerAssertBlobNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotZero()
     */
    public FAIntegerAssertBlobNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNull()
     */
    public FAIntegerAssertBlobNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNull()
     */
    public FAIntegerAssertBlobNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isBetween(Integer, Integer)
     */
    public FAIntegerAssertBlobNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    public FAIntegerAssertBlobNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isEqualTo(Integer)
     */
    public FAIntegerAssertBlobNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotEqualTo(Integer)
     */
    public FAIntegerAssertBlobNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThan(Integer)
     */
    public FAIntegerAssertBlobNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThanOrEqualTo(Integer)
     */
    public FAIntegerAssertBlobNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThan(Integer)
     */
    public FAIntegerAssertBlobNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    public FAIntegerAssertBlobNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(List)
     */
    public FAIntegerAssertBlobNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(Set)
     */
    public FAIntegerAssertBlobNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

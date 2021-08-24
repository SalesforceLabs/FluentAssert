/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `String` and `Integer`
 */
public class FAIntegerAssertStringNavigator {
    private FAIntegerAssert assertDelegate;
    private FAStringAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `back()` to go back to `String`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    public FAIntegerAssertStringNavigator(Integer actual, FAStringAssert originAssert) {
        assertDelegate = new FAIntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `String`.
     */
    public FAStringAssert back() {
        return originAssert;
    }

    /**
     * @see FAIntegerAssert.isNegative()
     */
    public FAIntegerAssertStringNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isPositive()
     */
    public FAIntegerAssertStringNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNegative()
     */
    public FAIntegerAssertStringNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotPositive()
     */
    public FAIntegerAssertStringNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see FAIntegerAssert.isOne()
     */
    public FAIntegerAssertStringNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see FAIntegerAssert.isZero()
     */
    public FAIntegerAssertStringNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotZero()
     */
    public FAIntegerAssertStringNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNull()
     */
    public FAIntegerAssertStringNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotNull()
     */
    public FAIntegerAssertStringNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see FAIntegerAssert.isBetween(Integer, Integer)
     */
    public FAIntegerAssertStringNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    public FAIntegerAssertStringNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see FAIntegerAssert.isEqualTo(Integer)
     */
    public FAIntegerAssertStringNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isNotEqualTo(Integer)
     */
    public FAIntegerAssertStringNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThan(Integer)
     */
    public FAIntegerAssertStringNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isLessThanOrEqualTo(Integer)
     */
    public FAIntegerAssertStringNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThan(Integer)
     */
    public FAIntegerAssertStringNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    public FAIntegerAssertStringNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(List)
     */
    public FAIntegerAssertStringNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see FAIntegerAssert.isIn(Set)
     */
    public FAIntegerAssertStringNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

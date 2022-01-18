/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Blob` and `Integer`
 */
global class IntegerAssertBlobNavigator {
    private Integer actual;
    private IntegerAssert assertDelegate;
    private BlobAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `andThen()` to continue asserting on `Blob`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global IntegerAssertBlobNavigator(Integer actual, BlobAssert originAssert) {
        this.actual = actual;
        assertDelegate = new IntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `Blob`.
     */
    global BlobAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `Blob`.
     * @see IntegerAssertBlobNavigator.andThen()
     */
    @Deprecated
    global BlobAssert back() {
        return andThen();
    }

    /**
     * @see IntegerAssert.isNegative()
     */
    global IntegerAssertBlobNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isPositive()
     */
    global IntegerAssertBlobNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNegative()
     */
    global IntegerAssertBlobNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isNotPositive()
     */
    global IntegerAssertBlobNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isOne()
     */
    global IntegerAssertBlobNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see IntegerAssert.isZero()
     */
    global IntegerAssertBlobNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNotZero()
     */
    global IntegerAssertBlobNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNull()
     */
    global IntegerAssertBlobNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNull()
     */
    global IntegerAssertBlobNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see IntegerAssert.isBetween(Integer, Integer)
     */
    global IntegerAssertBlobNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    global IntegerAssertBlobNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isEqualTo(Integer)
     */
    global IntegerAssertBlobNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isNotEqualTo(Integer)
     */
    global IntegerAssertBlobNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThan(Integer)
     */
    global IntegerAssertBlobNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThanOrEqualTo(Integer)
     */
    global IntegerAssertBlobNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThan(Integer)
     */
    global IntegerAssertBlobNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    global IntegerAssertBlobNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(List)
     */
    global IntegerAssertBlobNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(Set)
     */
    global IntegerAssertBlobNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

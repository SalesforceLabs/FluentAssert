/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `List<Database.UpsertResult>` and `Integer`
 */
global class IntegerAssertListDBUpsertNavigator {
    private Integer actual;
    private IntegerAssert assertDelegate;
    private ListUpsertResultAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `andThen()` to continue asserting on `List<Database.UpsertResult>`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global IntegerAssertListDBUpsertNavigator(Integer actual, ListUpsertResultAssert originAssert) {
        this.actual = actual;
        assertDelegate = new IntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `List<Database.UpsertResult>`.
     */
    global ListUpsertResultAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `List<Database.UpsertResult>`.
     * @see IntegerAssertListDBUpsertNavigator.andThen()
     */
    global ListUpsertResultAssert back() {
        return andThen();
    }

    /**
     * @see IntegerAssert.isNegative()
     */
    global IntegerAssertListDBUpsertNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isPositive()
     */
    global IntegerAssertListDBUpsertNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNegative()
     */
    global IntegerAssertListDBUpsertNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isNotPositive()
     */
    global IntegerAssertListDBUpsertNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isOne()
     */
    global IntegerAssertListDBUpsertNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see IntegerAssert.isZero()
     */
    global IntegerAssertListDBUpsertNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNotZero()
     */
    global IntegerAssertListDBUpsertNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNull()
     */
    global IntegerAssertListDBUpsertNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNull()
     */
    global IntegerAssertListDBUpsertNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see IntegerAssert.isBetween(Integer, Integer)
     */
    global IntegerAssertListDBUpsertNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    global IntegerAssertListDBUpsertNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isEqualTo(Integer)
     */
    global IntegerAssertListDBUpsertNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isNotEqualTo(Integer)
     */
    global IntegerAssertListDBUpsertNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThan(Integer)
     */
    global IntegerAssertListDBUpsertNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThanOrEqualTo(Integer)
     */
    global IntegerAssertListDBUpsertNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThan(Integer)
     */
    global IntegerAssertListDBUpsertNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    global IntegerAssertListDBUpsertNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(List)
     */
    global IntegerAssertListDBUpsertNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(Set)
     */
    global IntegerAssertListDBUpsertNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

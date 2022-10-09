/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `List<Database.SaveResult>` and `Integer`
 */
global class IntegerAssertListDBSaveNavigator {
    private Integer actual;
    private IntegerAssert assertDelegate;
    private ListSaveResultAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Integer` value. Use `andThen()` to continue asserting on `List<Database.SaveResult>`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global IntegerAssertListDBSaveNavigator(Integer actual, ListSaveResultAssert originAssert) {
        this.actual = actual;
        assertDelegate = new IntegerAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `List<Database.SaveResult>`.
     */
    global ListSaveResultAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `List<Database.SaveResult>`.
     * @see IntegerAssertListDBSaveNavigator.andThen()
     */
    global ListSaveResultAssert back() {
        return andThen();
    }

    /**
     * @see IntegerAssert.isNegative()
     */
    global IntegerAssertListDBSaveNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isPositive()
     */
    global IntegerAssertListDBSaveNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNegative()
     */
    global IntegerAssertListDBSaveNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see IntegerAssert.isNotPositive()
     */
    global IntegerAssertListDBSaveNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see IntegerAssert.isOne()
     */
    global IntegerAssertListDBSaveNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see IntegerAssert.isZero()
     */
    global IntegerAssertListDBSaveNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNotZero()
     */
    global IntegerAssertListDBSaveNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see IntegerAssert.isNull()
     */
    global IntegerAssertListDBSaveNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see IntegerAssert.isNotNull()
     */
    global IntegerAssertListDBSaveNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see IntegerAssert.isBetween(Integer, Integer)
     */
    global IntegerAssertListDBSaveNavigator isBetween(Integer fromInclusive, Integer toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isStrictlyBetween(Integer, Integer)
     */
    global IntegerAssertListDBSaveNavigator isStrictlyBetween(Integer fromExclusive, Integer toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see IntegerAssert.isEqualTo(Integer)
     */
    global IntegerAssertListDBSaveNavigator isEqualTo(Integer expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isNotEqualTo(Integer)
     */
    global IntegerAssertListDBSaveNavigator isNotEqualTo(Integer expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThan(Integer)
     */
    global IntegerAssertListDBSaveNavigator isLessThan(Integer expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isLessThanOrEqualTo(Integer)
     */
    global IntegerAssertListDBSaveNavigator isLessThanOrEqualTo(Integer expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThan(Integer)
     */
    global IntegerAssertListDBSaveNavigator isGreaterThan(Integer expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isGreaterThanOrEqualTo(Integer)
     */
    global IntegerAssertListDBSaveNavigator isGreaterThanOrEqualTo(Integer expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(List)
     */
    global IntegerAssertListDBSaveNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see IntegerAssert.isIn(Set)
     */
    global IntegerAssertListDBSaveNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

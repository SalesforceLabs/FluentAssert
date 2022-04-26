/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `String` and `Long`
 */
global class LongAssertStringNavigator {
    private Long actual;
    private LongAssert assertDelegate;
    private StringAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Long` value. Use `andThen()` to continue asserting on `String`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global LongAssertStringNavigator(Long actual, StringAssert originAssert) {
        this.actual = actual;
        assertDelegate = new LongAssert(actual);
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
     * @see LongAssertStringNavigator.andThen()
     */
    global StringAssert back() {
        return andThen();
    }

    /**
     * @see LongAssert.isNegative()
     */
    global LongAssertStringNavigator isNegative() {
        assertDelegate.isNegative();
        return this;
    }

    /**
     * @see LongAssert.isPositive()
     */
    global LongAssertStringNavigator isPositive() {
        assertDelegate.isPositive();
        return this;
    }

    /**
     * @see LongAssert.isNotNegative()
     */
    global LongAssertStringNavigator isNotNegative() {
        assertDelegate.isNotNegative();
        return this;
    }

    /**
     * @see LongAssert.isNotPositive()
     */
    global LongAssertStringNavigator isNotPositive() {
        assertDelegate.isNotPositive();
        return this;
    }

    /**
     * @see LongAssert.isOne()
     */
    global LongAssertStringNavigator isOne() {
        assertDelegate.isOne();
        return this;
    }

    /**
     * @see LongAssert.isZero()
     */
    global LongAssertStringNavigator isZero() {
        assertDelegate.isZero();
        return this;
    }

    /**
     * @see LongAssert.isNotZero()
     */
    global LongAssertStringNavigator isNotZero() {
        assertDelegate.isNotZero();
        return this;
    }

    /**
     * @see LongAssert.isNull()
     */
    global LongAssertStringNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see LongAssert.isNotNull()
     */
    global LongAssertStringNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see LongAssert.isBetween(Long, Long)
     */
    global LongAssertStringNavigator isBetween(Long fromInclusive, Long toInclusive) {
        assertDelegate.isBetween(fromInclusive, toInclusive);
        return this;
    }

    /**
     * @see LongAssert.isStrictlyBetween(Long, Long)
     */
    global LongAssertStringNavigator isStrictlyBetween(Long fromExclusive, Long toExclusive) {
        assertDelegate.isStrictlyBetween(fromExclusive, toExclusive);
        return this;
    }

    /**
     * @see LongAssert.isEqualTo(Long)
     */
    global LongAssertStringNavigator isEqualTo(Long expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see LongAssert.isNotEqualTo(Long)
     */
    global LongAssertStringNavigator isNotEqualTo(Long expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see LongAssert.isLessThan(Long)
     */
    global LongAssertStringNavigator isLessThan(Long expected) {
        assertDelegate.isLessThan(expected);
        return this;
    }

    /**
     * @see LongAssert.isLessThanOrEqualTo(Long)
     */
    global LongAssertStringNavigator isLessThanOrEqualTo(Long expected) {
        assertDelegate.isLessThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see LongAssert.isGreaterThan(Long)
     */
    global LongAssertStringNavigator isGreaterThan(Long expected) {
        assertDelegate.isGreaterThan(expected);
        return this;
    }

    /**
     * @see LongAssert.isGreaterThanOrEqualTo(Long)
     */
    global LongAssertStringNavigator isGreaterThanOrEqualTo(Long expected) {
        assertDelegate.isGreaterThanOrEqualTo(expected);
        return this;
    }

    /**
     * @see LongAssert.isIn(List)
     */
    global LongAssertStringNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see LongAssert.isIn(Set)
     */
    global LongAssertStringNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }
}

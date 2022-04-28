/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `String` and `Boolean`
 */
global class BooleanAssertStringNavigator {
    private Boolean actual;
    private BooleanAssert assertDelegate;
    private StringAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Boolean` value. Use `andThen()` to continue asserting on `String`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global BooleanAssertStringNavigator(Boolean actual, StringAssert originAssert) {
        this.actual = actual;
        assertDelegate = new BooleanAssert(actual);
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
     * @see BooleanAssertStringNavigator.andThen()
     */
    global StringAssert back() {
        return andThen();
    }

    /**
     * @see BooleanAssert.isNull()
     */
    global BooleanAssertStringNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see BooleanAssert.isNotNull()
     */
    global BooleanAssertStringNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see BooleanAssert.isSame(Object)
     */
    global BooleanAssertStringNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see BooleanAssert.isNotSame(Object)
     */
    global BooleanAssertStringNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see BooleanAssert.isEqualTo(Object)
     */
    global BooleanAssertStringNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see BooleanAssert.isNotEqualTo(Object)
     */
    global BooleanAssertStringNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see BooleanAssert.isIn(List)
     */
    global BooleanAssertStringNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see BooleanAssert.isIn(Set)
     */
    global BooleanAssertStringNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see BooleanAssert.isTrue()
     */
    global BooleanAssertStringNavigator isTrue() {
        assertDelegate.isTrue();
        return this;
    }

    /**
     * @see BooleanAssert.isFalse()
     */
    global BooleanAssertStringNavigator isFalse() {
        assertDelegate.isFalse();
        return this;
    }
}

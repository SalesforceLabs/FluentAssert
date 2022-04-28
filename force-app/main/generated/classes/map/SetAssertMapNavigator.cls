/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Map` and `Set<Object>`
 */
global class SetAssertMapNavigator {
    private Set<Object> actual;
    private SetAssert assertDelegate;
    private MapAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Set<Object>` value. Use `andThen()` to continue asserting on `Map`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global SetAssertMapNavigator(Set<Object> actual, MapAssert originAssert) {
        this.actual = actual;
        assertDelegate = new SetAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `Map`.
     */
    global MapAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `Map`.
     * @see SetAssertMapNavigator.andThen()
     */
    global MapAssert back() {
        return andThen();
    }

    /**
     * @see SetAssert.isEmpty()
     */
    global SetAssertMapNavigator isEmpty() {
        assertDelegate.isEmpty();
        return this;
    }

    /**
     * @see SetAssert.isNotEmpty()
     */
    global SetAssertMapNavigator isNotEmpty() {
        assertDelegate.isNotEmpty();
        return this;
    }

    /**
     * @see SetAssert.containsOnlyNulls()
     */
    global SetAssertMapNavigator containsOnlyNulls() {
        assertDelegate.containsOnlyNulls();
        return this;
    }

    /**
     * @see SetAssert.isNull()
     */
    global SetAssertMapNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see SetAssert.isNotNull()
     */
    global SetAssertMapNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see SetAssert.isSame(Object)
     */
    global SetAssertMapNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see SetAssert.isNotSame(Object)
     */
    global SetAssertMapNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see SetAssert.contains(List)
     */
    global SetAssertMapNavigator contains(List<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see SetAssert.contains(Set)
     */
    global SetAssertMapNavigator contains(Set<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see SetAssert.doesNotContain(List)
     */
    global SetAssertMapNavigator doesNotContain(List<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see SetAssert.doesNotContain(Set)
     */
    global SetAssertMapNavigator doesNotContain(Set<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see SetAssert.hasSize(Integer)
     */
    global SetAssertMapNavigator hasSize(Integer expected) {
        assertDelegate.hasSize(expected);
        return this;
    }

    /**
     * @see SetAssert.hasSameSizeAs(List)
     */
    global SetAssertMapNavigator hasSameSizeAs(List<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see SetAssert.hasSameSizeAs(Set)
     */
    global SetAssertMapNavigator hasSameSizeAs(Set<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see SetAssert.containsAnyOf(List)
     */
    global SetAssertMapNavigator containsAnyOf(List<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see SetAssert.containsAnyOf(Set)
     */
    global SetAssertMapNavigator containsAnyOf(Set<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see SetAssert.containsExactlyInAnyOrder(List)
     */
    global SetAssertMapNavigator containsExactlyInAnyOrder(List<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see SetAssert.containsExactlyInAnyOrder(Set)
     */
    global SetAssertMapNavigator containsExactlyInAnyOrder(Set<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see SetAssert.containsOnly(List)
     */
    global SetAssertMapNavigator containsOnly(List<Object> expected) {
        assertDelegate.containsOnly(expected);
        return this;
    }

    /**
     * @see SetAssert.isEqualTo(Object)
     */
    global SetAssertMapNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see SetAssert.isNotEqualTo(Object)
     */
    global SetAssertMapNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }
}

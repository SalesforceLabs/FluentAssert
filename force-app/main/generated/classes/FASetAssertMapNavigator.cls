/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Map` and `Set<Object>`
 */
public class FASetAssertMapNavigator {
    private FASetAssert assertDelegate;
    private FAMapAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Set<Object>` value. Use `back()` to go back to `Map`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    public FASetAssertMapNavigator(Set<Object> actual, FAMapAssert originAssert) {
        assertDelegate = new FASetAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `Map`.
     */
    public FAMapAssert back() {
        return originAssert;
    }

    /**
     * @see FASetAssert.isEmpty()
     */
    public FASetAssertMapNavigator isEmpty() {
        assertDelegate.isEmpty();
        return this;
    }

    /**
     * @see FASetAssert.isNotEmpty()
     */
    public FASetAssertMapNavigator isNotEmpty() {
        assertDelegate.isNotEmpty();
        return this;
    }

    /**
     * @see FASetAssert.containsOnlyNulls()
     */
    public FASetAssertMapNavigator containsOnlyNulls() {
        assertDelegate.containsOnlyNulls();
        return this;
    }

    /**
     * @see FASetAssert.isNull()
     */
    public FASetAssertMapNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see FASetAssert.isNotNull()
     */
    public FASetAssertMapNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see FASetAssert.isSame(Object)
     */
    public FASetAssertMapNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see FASetAssert.isNotSame(Object)
     */
    public FASetAssertMapNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see FASetAssert.contains(List)
     */
    public FASetAssertMapNavigator contains(List<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see FASetAssert.contains(Set)
     */
    public FASetAssertMapNavigator contains(Set<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see FASetAssert.doesNotContain(List)
     */
    public FASetAssertMapNavigator doesNotContain(List<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see FASetAssert.doesNotContain(Set)
     */
    public FASetAssertMapNavigator doesNotContain(Set<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see FASetAssert.hasSize(Integer)
     */
    public FASetAssertMapNavigator hasSize(Integer expected) {
        assertDelegate.hasSize(expected);
        return this;
    }

    /**
     * @see FASetAssert.hasSameSizeAs(List)
     */
    public FASetAssertMapNavigator hasSameSizeAs(List<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see FASetAssert.hasSameSizeAs(Set)
     */
    public FASetAssertMapNavigator hasSameSizeAs(Set<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see FASetAssert.containsAnyOf(List)
     */
    public FASetAssertMapNavigator containsAnyOf(List<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see FASetAssert.containsAnyOf(Set)
     */
    public FASetAssertMapNavigator containsAnyOf(Set<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see FASetAssert.containsExactlyInAnyOrder(List)
     */
    public FASetAssertMapNavigator containsExactlyInAnyOrder(List<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see FASetAssert.containsExactlyInAnyOrder(Set)
     */
    public FASetAssertMapNavigator containsExactlyInAnyOrder(Set<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see FASetAssert.containsOnly(List)
     */
    public FASetAssertMapNavigator containsOnly(List<Object> expected) {
        assertDelegate.containsOnly(expected);
        return this;
    }

    /**
     * @see FASetAssert.isEqualTo(Object)
     */
    public FASetAssertMapNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see FASetAssert.isNotEqualTo(Object)
     */
    public FASetAssertMapNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }
}

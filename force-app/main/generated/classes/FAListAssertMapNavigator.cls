/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Map` and `List<Object>`
 */
public class FAListAssertMapNavigator {
    private FAListAssert assertDelegate;
    private FAMapAssert originAssert;

    /**
     * @description Constructs an instance with an actual `List<Object>` value. Use `back()` to go back to `Map`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    public FAListAssertMapNavigator(List<Object> actual, FAMapAssert originAssert) {
        assertDelegate = new FAListAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `Map`.
     */
    public FAMapAssert back() {
        return originAssert;
    }

    /**
     * @see FAListAssert.isEmpty()
     */
    public FAListAssertMapNavigator isEmpty() {
        assertDelegate.isEmpty();
        return this;
    }

    /**
     * @see FAListAssert.isNotEmpty()
     */
    public FAListAssertMapNavigator isNotEmpty() {
        assertDelegate.isNotEmpty();
        return this;
    }

    /**
     * @see FAListAssert.isSorted()
     */
    public FAListAssertMapNavigator isSorted() {
        assertDelegate.isSorted();
        return this;
    }

    /**
     * @see FAListAssert.containsOnlyNulls()
     */
    public FAListAssertMapNavigator containsOnlyNulls() {
        assertDelegate.containsOnlyNulls();
        return this;
    }

    /**
     * @see FAListAssert.isNull()
     */
    public FAListAssertMapNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see FAListAssert.isNotNull()
     */
    public FAListAssertMapNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see FAListAssert.isSame(Object)
     */
    public FAListAssertMapNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see FAListAssert.isNotSame(Object)
     */
    public FAListAssertMapNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see FAListAssert.contains(List)
     */
    public FAListAssertMapNavigator contains(List<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see FAListAssert.contains(Set)
     */
    public FAListAssertMapNavigator contains(Set<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see FAListAssert.doesNotContain(List)
     */
    public FAListAssertMapNavigator doesNotContain(List<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see FAListAssert.doesNotContain(Set)
     */
    public FAListAssertMapNavigator doesNotContain(Set<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see FAListAssert.hasSize(Integer)
     */
    public FAListAssertMapNavigator hasSize(Integer expected) {
        assertDelegate.hasSize(expected);
        return this;
    }

    /**
     * @see FAListAssert.hasSameSizeAs(List)
     */
    public FAListAssertMapNavigator hasSameSizeAs(List<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see FAListAssert.hasSameSizeAs(Set)
     */
    public FAListAssertMapNavigator hasSameSizeAs(Set<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see FAListAssert.containsAnyOf(List)
     */
    public FAListAssertMapNavigator containsAnyOf(List<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see FAListAssert.containsAnyOf(Set)
     */
    public FAListAssertMapNavigator containsAnyOf(Set<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see FAListAssert.containsExactlyInAnyOrder(List)
     */
    public FAListAssertMapNavigator containsExactlyInAnyOrder(List<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see FAListAssert.containsExactlyInAnyOrder(Set)
     */
    public FAListAssertMapNavigator containsExactlyInAnyOrder(Set<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see FAListAssert.containsExactly(List)
     */
    public FAListAssertMapNavigator containsExactly(List<Object> expected) {
        assertDelegate.containsExactly(expected);
        return this;
    }

    /**
     * @see FAListAssert.containsSequence(List)
     */
    public FAListAssertMapNavigator containsSequence(List<Object> expected) {
        assertDelegate.containsSequence(expected);
        return this;
    }

    /**
     * @see FAListAssert.doesNotContainSequence(List)
     */
    public FAListAssertMapNavigator doesNotContainSequence(List<Object> expected) {
        assertDelegate.doesNotContainSequence(expected);
        return this;
    }

    /**
     * @see FAListAssert.containsSubsequence(List)
     */
    public FAListAssertMapNavigator containsSubsequence(List<Object> expected) {
        assertDelegate.containsSubsequence(expected);
        return this;
    }

    /**
     * @see FAListAssert.doesNotContainSubsequence(List)
     */
    public FAListAssertMapNavigator doesNotContainSubsequence(List<Object> expected) {
        assertDelegate.doesNotContainSubsequence(expected);
        return this;
    }

    /**
     * @see FAListAssert.containsOnly(List)
     */
    public FAListAssertMapNavigator containsOnly(List<Object> expected) {
        assertDelegate.containsOnly(expected);
        return this;
    }

    /**
     * @see FAListAssert.containsOnlyOnce(List)
     */
    public FAListAssertMapNavigator containsOnlyOnce(List<Object> expected) {
        assertDelegate.containsOnlyOnce(expected);
        return this;
    }

    /**
     * @see FAListAssert.isEqualTo(Object)
     */
    public FAListAssertMapNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see FAListAssert.isNotEqualTo(Object)
     */
    public FAListAssertMapNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }
}

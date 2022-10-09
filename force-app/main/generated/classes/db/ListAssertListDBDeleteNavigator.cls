/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `List<Database.DeleteResult>` and `List<Object>`
 */
global class ListAssertListDBDeleteNavigator {
    private List<Object> actual;
    private ListAssert assertDelegate;
    private ListDeleteResultAssert originAssert;

    /**
     * @description Constructs an instance with an actual `List<Object>` value. Use `andThen()` to continue asserting on `List<Database.DeleteResult>`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global ListAssertListDBDeleteNavigator(List<Object> actual, ListDeleteResultAssert originAssert) {
        this.actual = actual;
        assertDelegate = new ListAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `List<Database.DeleteResult>`.
     */
    global ListDeleteResultAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `List<Database.DeleteResult>`.
     * @see ListAssertListDBDeleteNavigator.andThen()
     */
    global ListDeleteResultAssert back() {
        return andThen();
    }

    /**
     * @see ListAssert.isEmpty()
     */
    global ListAssertListDBDeleteNavigator isEmpty() {
        assertDelegate.isEmpty();
        return this;
    }

    /**
     * @see ListAssert.isNotEmpty()
     */
    global ListAssertListDBDeleteNavigator isNotEmpty() {
        assertDelegate.isNotEmpty();
        return this;
    }

    /**
     * @see ListAssert.isSorted()
     */
    global ListAssertListDBDeleteNavigator isSorted() {
        assertDelegate.isSorted();
        return this;
    }

    /**
     * @see ListAssert.containsOnlyNulls()
     */
    global ListAssertListDBDeleteNavigator containsOnlyNulls() {
        assertDelegate.containsOnlyNulls();
        return this;
    }

    /**
     * @see ListAssert.isNull()
     */
    global ListAssertListDBDeleteNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see ListAssert.isNotNull()
     */
    global ListAssertListDBDeleteNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see ListAssert.isSame(Object)
     */
    global ListAssertListDBDeleteNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotSame(Object)
     */
    global ListAssertListDBDeleteNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(List)
     */
    global ListAssertListDBDeleteNavigator contains(List<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(Set)
     */
    global ListAssertListDBDeleteNavigator contains(Set<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(List)
     */
    global ListAssertListDBDeleteNavigator doesNotContain(List<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(Set)
     */
    global ListAssertListDBDeleteNavigator doesNotContain(Set<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSize(Integer)
     */
    global ListAssertListDBDeleteNavigator hasSize(Integer expected) {
        assertDelegate.hasSize(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(List)
     */
    global ListAssertListDBDeleteNavigator hasSameSizeAs(List<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(Set)
     */
    global ListAssertListDBDeleteNavigator hasSameSizeAs(Set<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(List)
     */
    global ListAssertListDBDeleteNavigator containsAnyOf(List<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(Set)
     */
    global ListAssertListDBDeleteNavigator containsAnyOf(Set<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(List)
     */
    global ListAssertListDBDeleteNavigator containsExactlyInAnyOrder(List<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(Set)
     */
    global ListAssertListDBDeleteNavigator containsExactlyInAnyOrder(Set<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactly(List)
     */
    global ListAssertListDBDeleteNavigator containsExactly(List<Object> expected) {
        assertDelegate.containsExactly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSequence(List)
     */
    global ListAssertListDBDeleteNavigator containsSequence(List<Object> expected) {
        assertDelegate.containsSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSequence(List)
     */
    global ListAssertListDBDeleteNavigator doesNotContainSequence(List<Object> expected) {
        assertDelegate.doesNotContainSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSubsequence(List)
     */
    global ListAssertListDBDeleteNavigator containsSubsequence(List<Object> expected) {
        assertDelegate.containsSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSubsequence(List)
     */
    global ListAssertListDBDeleteNavigator doesNotContainSubsequence(List<Object> expected) {
        assertDelegate.doesNotContainSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnly(List)
     */
    global ListAssertListDBDeleteNavigator containsOnly(List<Object> expected) {
        assertDelegate.containsOnly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnlyOnce(List)
     */
    global ListAssertListDBDeleteNavigator containsOnlyOnce(List<Object> expected) {
        assertDelegate.containsOnlyOnce(expected);
        return this;
    }

    /**
     * @see ListAssert.isEqualTo(Object)
     */
    global ListAssertListDBDeleteNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotEqualTo(Object)
     */
    global ListAssertListDBDeleteNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }
}

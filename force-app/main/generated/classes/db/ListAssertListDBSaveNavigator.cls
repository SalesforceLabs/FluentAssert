/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `List<Database.SaveResult>` and `List<Object>`
 */
global class ListAssertListDBSaveNavigator {
    private List<Object> actual;
    private ListAssert assertDelegate;
    private ListSaveResultAssert originAssert;

    /**
     * @description Constructs an instance with an actual `List<Object>` value. Use `andThen()` to continue asserting on `List<Database.SaveResult>`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global ListAssertListDBSaveNavigator(List<Object> actual, ListSaveResultAssert originAssert) {
        this.actual = actual;
        assertDelegate = new ListAssert(actual);
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
     * @see ListAssertListDBSaveNavigator.andThen()
     */
    global ListSaveResultAssert back() {
        return andThen();
    }

    /**
     * @see ListAssert.isEmpty()
     */
    global ListAssertListDBSaveNavigator isEmpty() {
        assertDelegate.isEmpty();
        return this;
    }

    /**
     * @see ListAssert.isNotEmpty()
     */
    global ListAssertListDBSaveNavigator isNotEmpty() {
        assertDelegate.isNotEmpty();
        return this;
    }

    /**
     * @see ListAssert.isSorted()
     */
    global ListAssertListDBSaveNavigator isSorted() {
        assertDelegate.isSorted();
        return this;
    }

    /**
     * @see ListAssert.containsOnlyNulls()
     */
    global ListAssertListDBSaveNavigator containsOnlyNulls() {
        assertDelegate.containsOnlyNulls();
        return this;
    }

    /**
     * @see ListAssert.isNull()
     */
    global ListAssertListDBSaveNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see ListAssert.isNotNull()
     */
    global ListAssertListDBSaveNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see ListAssert.isSame(Object)
     */
    global ListAssertListDBSaveNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotSame(Object)
     */
    global ListAssertListDBSaveNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(List)
     */
    global ListAssertListDBSaveNavigator contains(List<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(Set)
     */
    global ListAssertListDBSaveNavigator contains(Set<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(List)
     */
    global ListAssertListDBSaveNavigator doesNotContain(List<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(Set)
     */
    global ListAssertListDBSaveNavigator doesNotContain(Set<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSize(Integer)
     */
    global ListAssertListDBSaveNavigator hasSize(Integer expected) {
        assertDelegate.hasSize(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(List)
     */
    global ListAssertListDBSaveNavigator hasSameSizeAs(List<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(Set)
     */
    global ListAssertListDBSaveNavigator hasSameSizeAs(Set<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(List)
     */
    global ListAssertListDBSaveNavigator containsAnyOf(List<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(Set)
     */
    global ListAssertListDBSaveNavigator containsAnyOf(Set<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(List)
     */
    global ListAssertListDBSaveNavigator containsExactlyInAnyOrder(List<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(Set)
     */
    global ListAssertListDBSaveNavigator containsExactlyInAnyOrder(Set<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactly(List)
     */
    global ListAssertListDBSaveNavigator containsExactly(List<Object> expected) {
        assertDelegate.containsExactly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSequence(List)
     */
    global ListAssertListDBSaveNavigator containsSequence(List<Object> expected) {
        assertDelegate.containsSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSequence(List)
     */
    global ListAssertListDBSaveNavigator doesNotContainSequence(List<Object> expected) {
        assertDelegate.doesNotContainSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSubsequence(List)
     */
    global ListAssertListDBSaveNavigator containsSubsequence(List<Object> expected) {
        assertDelegate.containsSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSubsequence(List)
     */
    global ListAssertListDBSaveNavigator doesNotContainSubsequence(List<Object> expected) {
        assertDelegate.doesNotContainSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnly(List)
     */
    global ListAssertListDBSaveNavigator containsOnly(List<Object> expected) {
        assertDelegate.containsOnly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnlyOnce(List)
     */
    global ListAssertListDBSaveNavigator containsOnlyOnce(List<Object> expected) {
        assertDelegate.containsOnlyOnce(expected);
        return this;
    }

    /**
     * @see ListAssert.isEqualTo(Object)
     */
    global ListAssertListDBSaveNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotEqualTo(Object)
     */
    global ListAssertListDBSaveNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }
}

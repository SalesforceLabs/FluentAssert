/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `List<Database.UpsertResult>` and `List<Object>`
 */
global class ListAssertListDBUpsertNavigator {
    private List<Object> actual;
    private ListAssert assertDelegate;
    private ListUpsertResultAssert originAssert;

    /**
     * @description Constructs an instance with an actual `List<Object>` value. Use `andThen()` to continue asserting on `List<Database.UpsertResult>`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global ListAssertListDBUpsertNavigator(List<Object> actual, ListUpsertResultAssert originAssert) {
        this.actual = actual;
        assertDelegate = new ListAssert(actual);
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
     * @see ListAssertListDBUpsertNavigator.andThen()
     */
    global ListUpsertResultAssert back() {
        return andThen();
    }

    /**
     * @see ListAssert.isEmpty()
     */
    global ListAssertListDBUpsertNavigator isEmpty() {
        assertDelegate.isEmpty();
        return this;
    }

    /**
     * @see ListAssert.isNotEmpty()
     */
    global ListAssertListDBUpsertNavigator isNotEmpty() {
        assertDelegate.isNotEmpty();
        return this;
    }

    /**
     * @see ListAssert.isSorted()
     */
    global ListAssertListDBUpsertNavigator isSorted() {
        assertDelegate.isSorted();
        return this;
    }

    /**
     * @see ListAssert.containsOnlyNulls()
     */
    global ListAssertListDBUpsertNavigator containsOnlyNulls() {
        assertDelegate.containsOnlyNulls();
        return this;
    }

    /**
     * @see ListAssert.isNull()
     */
    global ListAssertListDBUpsertNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see ListAssert.isNotNull()
     */
    global ListAssertListDBUpsertNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see ListAssert.isSame(Object)
     */
    global ListAssertListDBUpsertNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotSame(Object)
     */
    global ListAssertListDBUpsertNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(List)
     */
    global ListAssertListDBUpsertNavigator contains(List<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(Set)
     */
    global ListAssertListDBUpsertNavigator contains(Set<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(List)
     */
    global ListAssertListDBUpsertNavigator doesNotContain(List<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(Set)
     */
    global ListAssertListDBUpsertNavigator doesNotContain(Set<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSize(Integer)
     */
    global ListAssertListDBUpsertNavigator hasSize(Integer expected) {
        assertDelegate.hasSize(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(List)
     */
    global ListAssertListDBUpsertNavigator hasSameSizeAs(List<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(Set)
     */
    global ListAssertListDBUpsertNavigator hasSameSizeAs(Set<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(List)
     */
    global ListAssertListDBUpsertNavigator containsAnyOf(List<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(Set)
     */
    global ListAssertListDBUpsertNavigator containsAnyOf(Set<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(List)
     */
    global ListAssertListDBUpsertNavigator containsExactlyInAnyOrder(List<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(Set)
     */
    global ListAssertListDBUpsertNavigator containsExactlyInAnyOrder(Set<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactly(List)
     */
    global ListAssertListDBUpsertNavigator containsExactly(List<Object> expected) {
        assertDelegate.containsExactly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSequence(List)
     */
    global ListAssertListDBUpsertNavigator containsSequence(List<Object> expected) {
        assertDelegate.containsSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSequence(List)
     */
    global ListAssertListDBUpsertNavigator doesNotContainSequence(List<Object> expected) {
        assertDelegate.doesNotContainSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSubsequence(List)
     */
    global ListAssertListDBUpsertNavigator containsSubsequence(List<Object> expected) {
        assertDelegate.containsSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSubsequence(List)
     */
    global ListAssertListDBUpsertNavigator doesNotContainSubsequence(List<Object> expected) {
        assertDelegate.doesNotContainSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnly(List)
     */
    global ListAssertListDBUpsertNavigator containsOnly(List<Object> expected) {
        assertDelegate.containsOnly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnlyOnce(List)
     */
    global ListAssertListDBUpsertNavigator containsOnlyOnce(List<Object> expected) {
        assertDelegate.containsOnlyOnce(expected);
        return this;
    }

    /**
     * @see ListAssert.isEqualTo(Object)
     */
    global ListAssertListDBUpsertNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotEqualTo(Object)
     */
    global ListAssertListDBUpsertNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }
}

/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `List<Database.UndeleteResult>` and `List<Object>`
 */
global class ListAssertListDBUndeleteNavigator {
    private List<Object> actual;
    private ListAssert assertDelegate;
    private ListUndeleteResultAssert originAssert;

    /**
     * @description Constructs an instance with an actual `List<Object>` value. Use `andThen()` to continue asserting on `List<Database.UndeleteResult>`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global ListAssertListDBUndeleteNavigator(List<Object> actual, ListUndeleteResultAssert originAssert) {
        this.actual = actual;
        assertDelegate = new ListAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `List<Database.UndeleteResult>`.
     */
    global ListUndeleteResultAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `List<Database.UndeleteResult>`.
     * @see ListAssertListDBUndeleteNavigator.andThen()
     */
    global ListUndeleteResultAssert back() {
        return andThen();
    }

    /**
     * @see ListAssert.isEmpty()
     */
    global ListAssertListDBUndeleteNavigator isEmpty() {
        assertDelegate.isEmpty();
        return this;
    }

    /**
     * @see ListAssert.isNotEmpty()
     */
    global ListAssertListDBUndeleteNavigator isNotEmpty() {
        assertDelegate.isNotEmpty();
        return this;
    }

    /**
     * @see ListAssert.isSorted()
     */
    global ListAssertListDBUndeleteNavigator isSorted() {
        assertDelegate.isSorted();
        return this;
    }

    /**
     * @see ListAssert.containsOnlyNulls()
     */
    global ListAssertListDBUndeleteNavigator containsOnlyNulls() {
        assertDelegate.containsOnlyNulls();
        return this;
    }

    /**
     * @see ListAssert.isNull()
     */
    global ListAssertListDBUndeleteNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see ListAssert.isNotNull()
     */
    global ListAssertListDBUndeleteNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see ListAssert.isSame(Object)
     */
    global ListAssertListDBUndeleteNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotSame(Object)
     */
    global ListAssertListDBUndeleteNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(List)
     */
    global ListAssertListDBUndeleteNavigator contains(List<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(Set)
     */
    global ListAssertListDBUndeleteNavigator contains(Set<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(List)
     */
    global ListAssertListDBUndeleteNavigator doesNotContain(List<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(Set)
     */
    global ListAssertListDBUndeleteNavigator doesNotContain(Set<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSize(Integer)
     */
    global ListAssertListDBUndeleteNavigator hasSize(Integer expected) {
        assertDelegate.hasSize(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(List)
     */
    global ListAssertListDBUndeleteNavigator hasSameSizeAs(List<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(Set)
     */
    global ListAssertListDBUndeleteNavigator hasSameSizeAs(Set<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(List)
     */
    global ListAssertListDBUndeleteNavigator containsAnyOf(List<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(Set)
     */
    global ListAssertListDBUndeleteNavigator containsAnyOf(Set<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(List)
     */
    global ListAssertListDBUndeleteNavigator containsExactlyInAnyOrder(List<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(Set)
     */
    global ListAssertListDBUndeleteNavigator containsExactlyInAnyOrder(Set<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactly(List)
     */
    global ListAssertListDBUndeleteNavigator containsExactly(List<Object> expected) {
        assertDelegate.containsExactly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSequence(List)
     */
    global ListAssertListDBUndeleteNavigator containsSequence(List<Object> expected) {
        assertDelegate.containsSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSequence(List)
     */
    global ListAssertListDBUndeleteNavigator doesNotContainSequence(List<Object> expected) {
        assertDelegate.doesNotContainSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSubsequence(List)
     */
    global ListAssertListDBUndeleteNavigator containsSubsequence(List<Object> expected) {
        assertDelegate.containsSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSubsequence(List)
     */
    global ListAssertListDBUndeleteNavigator doesNotContainSubsequence(List<Object> expected) {
        assertDelegate.doesNotContainSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnly(List)
     */
    global ListAssertListDBUndeleteNavigator containsOnly(List<Object> expected) {
        assertDelegate.containsOnly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnlyOnce(List)
     */
    global ListAssertListDBUndeleteNavigator containsOnlyOnce(List<Object> expected) {
        assertDelegate.containsOnlyOnce(expected);
        return this;
    }

    /**
     * @see ListAssert.isEqualTo(Object)
     */
    global ListAssertListDBUndeleteNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotEqualTo(Object)
     */
    global ListAssertListDBUndeleteNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }
}

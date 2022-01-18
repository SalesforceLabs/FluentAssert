/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `SObject` and `List<Object>`
 */
global class ListAssertSObjectNavigator {
    private List<Object> actual;
    private ListAssert assertDelegate;
    private SObjectAssert originAssert;

    /**
     * @description Constructs an instance with an actual `List<Object>` value. Use `andThen()` to continue asserting on `SObject`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global ListAssertSObjectNavigator(List<Object> actual, SObjectAssert originAssert) {
        this.actual = actual;
        assertDelegate = new ListAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `SObject`.
     */
    global SObjectAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `SObject`.
     * @see ListAssertSObjectNavigator.andThen()
     */
    @Deprecated
    global SObjectAssert back() {
        return andThen();
    }

    /**
     * @see ListAssert.isEmpty()
     */
    global ListAssertSObjectNavigator isEmpty() {
        assertDelegate.isEmpty();
        return this;
    }

    /**
     * @see ListAssert.isNotEmpty()
     */
    global ListAssertSObjectNavigator isNotEmpty() {
        assertDelegate.isNotEmpty();
        return this;
    }

    /**
     * @see ListAssert.isSorted()
     */
    global ListAssertSObjectNavigator isSorted() {
        assertDelegate.isSorted();
        return this;
    }

    /**
     * @see ListAssert.containsOnlyNulls()
     */
    global ListAssertSObjectNavigator containsOnlyNulls() {
        assertDelegate.containsOnlyNulls();
        return this;
    }

    /**
     * @see ListAssert.isNull()
     */
    global ListAssertSObjectNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see ListAssert.isNotNull()
     */
    global ListAssertSObjectNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see ListAssert.isSame(Object)
     */
    global ListAssertSObjectNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotSame(Object)
     */
    global ListAssertSObjectNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(List)
     */
    global ListAssertSObjectNavigator contains(List<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.contains(Set)
     */
    global ListAssertSObjectNavigator contains(Set<Object> expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(List)
     */
    global ListAssertSObjectNavigator doesNotContain(List<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContain(Set)
     */
    global ListAssertSObjectNavigator doesNotContain(Set<Object> expected) {
        assertDelegate.doesNotContain(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSize(Integer)
     */
    global ListAssertSObjectNavigator hasSize(Integer expected) {
        assertDelegate.hasSize(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(List)
     */
    global ListAssertSObjectNavigator hasSameSizeAs(List<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.hasSameSizeAs(Set)
     */
    global ListAssertSObjectNavigator hasSameSizeAs(Set<Object> expected) {
        assertDelegate.hasSameSizeAs(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(List)
     */
    global ListAssertSObjectNavigator containsAnyOf(List<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsAnyOf(Set)
     */
    global ListAssertSObjectNavigator containsAnyOf(Set<Object> expected) {
        assertDelegate.containsAnyOf(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(List)
     */
    global ListAssertSObjectNavigator containsExactlyInAnyOrder(List<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactlyInAnyOrder(Set)
     */
    global ListAssertSObjectNavigator containsExactlyInAnyOrder(Set<Object> expected) {
        assertDelegate.containsExactlyInAnyOrder(expected);
        return this;
    }

    /**
     * @see ListAssert.containsExactly(List)
     */
    global ListAssertSObjectNavigator containsExactly(List<Object> expected) {
        assertDelegate.containsExactly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSequence(List)
     */
    global ListAssertSObjectNavigator containsSequence(List<Object> expected) {
        assertDelegate.containsSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSequence(List)
     */
    global ListAssertSObjectNavigator doesNotContainSequence(List<Object> expected) {
        assertDelegate.doesNotContainSequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsSubsequence(List)
     */
    global ListAssertSObjectNavigator containsSubsequence(List<Object> expected) {
        assertDelegate.containsSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.doesNotContainSubsequence(List)
     */
    global ListAssertSObjectNavigator doesNotContainSubsequence(List<Object> expected) {
        assertDelegate.doesNotContainSubsequence(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnly(List)
     */
    global ListAssertSObjectNavigator containsOnly(List<Object> expected) {
        assertDelegate.containsOnly(expected);
        return this;
    }

    /**
     * @see ListAssert.containsOnlyOnce(List)
     */
    global ListAssertSObjectNavigator containsOnlyOnce(List<Object> expected) {
        assertDelegate.containsOnlyOnce(expected);
        return this;
    }

    /**
     * @see ListAssert.isEqualTo(Object)
     */
    global ListAssertSObjectNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see ListAssert.isNotEqualTo(Object)
     */
    global ListAssertSObjectNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }
}

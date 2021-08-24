/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `List`s
 */
public class FAListAssert extends FACollectionAssertBase {
    private List<Object> actual;

    /**
     * @description Constructs an instance with an actual `List` value.
     * @param actual The actual value to assert against.
     */
    public FAListAssert(List<Object> actual) {
        this.actual = actual;
    }

    /**
     * @description Constructs a navigator that allows asserts on size(). Use `back()` to get back to asserts on `List`.
     * @return a navigator on size().
     */
    public FAIntegerAssertListNavigator size() {
        notNull(actual, 'actual');
        return new FAIntegerAssertListNavigator(actual.size(), this);
    }

    /**
     * @description Verifies that the actual contains the given values, in any order.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if expected values are not in actual list
     */
    public FAListAssert contains(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertContains(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual contains the given values, in any order.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if expected values are not in actual list
     */
    public FAListAssert contains(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertContains(expected.iterator());
        return this;
    }

    protected override Boolean actualContains(Object expected) {
        return actual.contains(expected);
    }

    /**
     * @description Verifies that the actual contains at least one of the given values.
     * @param expected elements to be checked against actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't have any elements of expected
     */
    public FAListAssert containsAnyOf(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        isNotEmpty();

        assertContainsAnyOf(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual contains at least one of the given values.
     * @param expected elements to be checked against actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't have any elements of expected
     */
    public FAListAssert containsAnyOf(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertContainsAnyOf(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual contains exactly the given values and nothing else, in order.
     * @param expected elements to be contained in actual ini order
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain exactly all elements from expected
     */
    public FAListAssert containsExactly(List<Object> expected) {
        notEmpty(expected, 'expected');
        hasSameSizeAs(expected);

        for (Integer i = 0; i < expected.size(); i++) {
            if(!expected[i].equals(actual[i])) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual and expected elements at index {0} to match. Expected: {1}. Actual {2}', new List<Object> {i, expected[i], actual[i]}));
            }
        }
        return this;
    }

    /**
     * @description Verifies that the actual contains exactly the given values and nothing else, in any order.
     * @param expected elements expected in the actual list
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain exactly the elements from expected
     */
    public FAListAssert containsExactlyInAnyOrder(List<Object> expected) {
        notEmpty(expected, 'expected');
        hasSameSizeAs(expected);
        contains(expected);
        return this;
    }

    /**
     * @description Verifies that the actual contains exactly the given values and nothing else, in any order.
     * @param expected elements expected in the actual list
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain exactly the elements from expected
     */
    public FAListAssert containsExactlyInAnyOrder(Set<Object> expected) {
        notEmpty(expected, 'expected');
        hasSameSizeAs(expected);
        contains(expected);
        return this;
    }

    /**
     * @description Verifies that `actual` contains only elements from `expected` and nothing else.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is empty or contains non-null values
     */
    public FAListAssert containsOnly(List<Object> expected) {
        notNull(actual,   'actual');
        notEmpty(expected, 'expected');

        // Narrow unexpected values in reversed order first
        List<Object> unexpectedValues = new List<Object>(actual);
        for (Integer i = (unexpectedValues.size()-1) ; i>= 0 ; i--) {
            if(expected.contains(unexpectedValues[i])){
                unexpectedValues.remove(i);
            }
        } 

        // Likewise narrow missing values, also reversed
        List<Object> missingValues = new List<Object>(expected);
        for (Integer i = (missingValues.size()-1) ; i>= 0 ; i--) {
            if(actualContains(missingValues[i])){
                missingValues.remove(i);
            }
        }

        if (!unexpectedValues.isEmpty() || !missingValues.isEmpty()) {
            throw new FluentAssert.AssertException(String.format('Was expecting actual to contain only {0}, but found {1} while not finding {2}', new List<Object>{expected, unexpectedValues, missingValues}));
        }

        return this;
    }

    /**
     * @description Verifies that actual contains only null elements and nothing else.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is empty or contains non-null values
     */
    public FAListAssert containsOnlyNulls() {
        notEmpty(actual, 'actual');

        for (Object o : actual) {
            if(o != null) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual to contain only null, but found {0}', new List<Object>{o}));
            }
        }

        return this;
    }

   /**
     * @description Verifies that `actual` contains only elements from `expected` in any given order. Dublicates are NOT ignored.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual is has unexpected or missing values.
     */
    public FAListAssert containsOnlyOnce(List<Object> expected) {
        notNull(actual,   'actual');
        notEmpty(expected, 'expected');

        List<Object> notFound    = new List<Object>();
        List<Object> notOnlyOnce = new List<Object>();

        // Find dublicates from actual
        List<Object> duplicatesFromActual = new List<Object>();
        Set<Object> uniqueValues = new Set<Object>();
        for (Object a : actual) {
            if(uniqueValues.contains(a)) {
                duplicatesFromActual.add(a);
            }
            uniqueValues.add(a);
        }

        for (Object expectedOnlyOnce : expected) {
            if(!actualContains(expectedOnlyOnce)) {
                notFound.add(expectedOnlyOnce);
            } else if (duplicatesFromActual.contains(expectedOnlyOnce)) {
                notOnlyOnce.add(expectedOnlyOnce);
            }
        }

        if (!notFound.isEmpty() || !notOnlyOnce.isEmpty()) {
            throw new FluentAssert.AssertException(String.format('Was expecting actual to contain {0} only once, but found {1} as dublicates while not finding {2}', new List<Object>{expected, notOnlyOnce, notFound}));
        }

        return this;
    }

    /**
     * @description Verifies that the actual contains the given sequence in the correct order and without extra values between the sequence values.
     * @param expected elements to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain the sequence from expected
     */
    public FAListAssert containsSequence(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        for (Integer i = 0; i < actual.size(); i++) {
            if(containsSequenceAtIndex(expected, i)) {
                return this;
            }
        }

        throw new FluentAssert.AssertException(String.format('Was expecting actual to contain the sequence {0}', new List<Object> {expected}));
    }
    
    private Boolean containsSequenceAtIndex(List<Object> expected, Integer startingIndex) {
        if(actual.size() - startingIndex < expected.size()) {
            return false;
        }

        for (Integer i = 0; i < expected.size(); i++) {
            if(!actual[startingIndex + i].equals(expected[i])) {
                return false;
            }
        }
        return true;
    }

    /**
     * @description Verifies that the actual contains the given subsequence in the correct order (possibly with other values between them).
     * @param expected subsequence to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual doesn't contain subsequence
     */
    public FAListAssert containsSubsequence(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        Iterator<Object> actualIterator = actual.iterator();
        Integer subsequenceIndex = 0;
        while (actualIterator.hasNext() && subsequenceIndex < expected.size()) {
            Object actualNext = actualIterator.next();
            Object subsequenceNext = expected[subsequenceIndex];
            if (actualNext.equals(subsequenceNext)) {
                subsequenceIndex++;
            }
        }

        if (subsequenceIndex < expected.size()) {
            throw new FluentAssert.AssertException(String.format('Was expecting actual to contain the subsequence {0}', new List<Object> {expected}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual does not contain the given values.
     * @param expected elements not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual did contain any of the values
     */
    public FAListAssert doesNotContain(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertDoesNotContain(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual does not contain the given values.
     * @param expected elements not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual did contain any of the values
     */
    public FAListAssert doesNotContain(Set<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        assertDoesNotContain(expected.iterator());
        return this;
    }

    /**
     * @description Verifies that the actual does not contain the given sequence, a sequence is defined by an ordered sequence of values without extra values between them.
     * @param expected elements not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual contains the sequence
     */
    public FAListAssert doesNotContainSequence(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');

        for (Integer i = 0; i < actual.size(); i++) {
            if(containsSequenceAtIndex(expected, i)) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual to contain the sequence {0}', new List<Object> {expected}));
            }
        }
        return this;
    }

    /**
     * @description Verifies that the actual does not contain the given subsequence, a subsequence is defined by an ordered sequence of values with possibly extra values between them.
     * @param expected subsequence not to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws IllegalArgumentException if expected is empty
     * @throws FluentAssert.AssertException if actual contains the subsequence
     */
    public FAListAssert doesNotContainSubsequence(List<Object> expected) {
        notNull(actual, 'actual');
        notEmpty(expected, 'expected');
        Integer subsequenceIndex = 0;
        Integer subsequenceStartIndex = 0;

        for (Integer index = 0; index < actual.size(); index++) {
            Object actualNext = actual[index];
            Object subsequenceNext = expected[subsequenceIndex];
            if (actualNext.equals(subsequenceNext)) {
                if (subsequenceIndex == 0) {
                    subsequenceStartIndex = index;
                }
                subsequenceIndex++;
            }
            if (subsequenceIndex == expected.size()) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual not to contain the subsequence {0}', new List<Object> {expected}));
            }
        }
        return this;
    }

    /**
     * @description Verifies that the actual has same size as expected.
     * @param expected list to compare size against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual doesn't have the same size as expected
     */
    public FAListAssert hasSameSizeAs(List<Object> expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        return hasSize(expected.size());
    }
    /**
     * @description Verifies that the actual has same size as expected.
     * @param expected list to compare size against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if actual doesn't have the same size as expected
     */
    public FAListAssert hasSameSizeAs(Set<Object> expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        return hasSize(expected.size());
    }

    /**
     * @description Verifies that size of actual is equal to expected.
     * @param expected expected size of actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if size of actual is not equal
     */
    public FAListAssert hasSize(Integer expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        if(actual.size() != expected) {
            throw new FluentAssert.AssertException(String.format('Was expecting size of actual list to be {0}', new List<Object> {expected}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual of values is empty.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not empty
     */
    public FAListAssert isEmpty() {
        notNull(actual, 'actual');
        if(!actual.isEmpty()) {
            throw new FluentAssert.AssertException('Was expecting actual list not to be empty');
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not equal to `expected`.
     */
    public FAListAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        if(actual != expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be equal', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual of values is not empty.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is empty
     */
    public FAListAssert isNotEmpty() {
        notNull(actual, 'actual');
        if(actual.isEmpty()) {
           throw new FluentAssert.AssertException('Was expecting actual list not to be empty');
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is equal to `expected`.
     */
    public FAListAssert isNotEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual == expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} not to be equal', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is not null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is null.
     */
    public FAListAssert isNotNull() {
        if(actual == null) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} not to be null', new List<Object> {actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is not same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not same (part of memory) as `expected`.
     */
    public FAListAssert isNotSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual === expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} not to be same', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is not null.
     */
    public FAListAssert isNull() {
        if(actual != null) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} to be null', new List<Object> {actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not is same (part of memory) as `expected`.
     */
    public FAListAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual !== expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be same', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual is sorted. Implementation will create a new list, sort it and use that against actual.
     * Be aware that sorting is done acording to Apex Developer guide (https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_collections_lists_sorting.htm).
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws FluentAssert.AssertException if actual is not sorted
     */
    public FAListAssert isSorted() {
        notNull(actual, 'actual');

        List<Object> expected = new List<Object>(actual);
        expected.sort();

        return containsExactly(expected);
    }
}

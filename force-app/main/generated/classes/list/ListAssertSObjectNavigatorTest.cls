/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListAssertSObjectNavigatorTest {
    @IsTest
    static void testAndThen() {
        // Given
        SObjectAssert expectedAssert = Assert.that(new Account());
        ListAssertSObjectNavigator navigator = new ListAssertSObjectNavigator(null, expectedAssert);

        // When
        SObjectAssert actualAssert     = navigator.andThen();
        SObjectAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(actual, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>(), (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>(), (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator((List<Object>) null, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{null}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ListAssertSObjectNavigator expectedNavigator = new ListAssertSObjectNavigator(new List<Object>{'X'}, (SObjectAssert) null);

        // When
        ListAssertSObjectNavigator actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

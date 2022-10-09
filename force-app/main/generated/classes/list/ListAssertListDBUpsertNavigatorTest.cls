/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListAssertListDBUpsertNavigatorTest {
    @IsTest
    static void testAndThen() {
        // Given
        ListUpsertResultAssert expectedAssert = Assert.that(new List<Database.UpsertResult>{DatabaseXResultUtil.createUpsertResult(true, true)});
        ListAssertListDBUpsertNavigator navigator = new ListAssertListDBUpsertNavigator(null, expectedAssert);

        // When
        ListUpsertResultAssert actualAssert     = navigator.andThen();
        ListUpsertResultAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(actual, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>(), (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>(), (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator((List<Object>) null, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{null}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ListAssertListDBUpsertNavigator expectedNavigator = new ListAssertListDBUpsertNavigator(new List<Object>{'X'}, (ListUpsertResultAssert) null);

        // When
        ListAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

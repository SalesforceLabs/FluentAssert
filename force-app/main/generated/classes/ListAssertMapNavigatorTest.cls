/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListAssertMapNavigatorTest {
    @IsTest
    static void testAndThen() {
        // Given
        MapAssert expectedAssert = Assert.that(new Map<Object, Object>());
        ListAssertMapNavigator navigator = new ListAssertMapNavigator(null, expectedAssert);

        // When
        MapAssert actualAssert     = navigator.andThen();
        MapAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(actual, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>(), (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>(), (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator((List<Object>) null, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{null}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ListAssertMapNavigator expectedNavigator = new ListAssertMapNavigator(new List<Object>{'X'}, (MapAssert) null);

        // When
        ListAssertMapNavigator actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

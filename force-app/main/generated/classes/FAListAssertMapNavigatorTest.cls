/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class FAListAssertMapNavigatorTest {
    @IsTest
    static void testBack() {
        // Given
        FAMapAssert expectedMapAssert = FluentAssert.that(new Map<Object, Object>());
        FAListAssertMapNavigator navigator = new FAListAssertMapNavigator(null, expectedMapAssert);

        // When
        FAMapAssert actualMapAssert = navigator.back();

        // Then
        System.assert(expectedMapAssert === actualMapAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(actual, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>(), (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>(), (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator((List<Object>) null, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{null}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        FAListAssertMapNavigator expectedNavigator = new FAListAssertMapNavigator(new List<Object>{'X'}, (FAMapAssert) null);

        // When
        FAListAssertMapNavigator actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

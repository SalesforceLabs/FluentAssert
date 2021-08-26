/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FASetAssertMapNavigatorTest {
    @IsTest
    static void testBack() {
        // Given
        FAMapAssert expectedMapAssert = FluentAssert.that(new Map<Object, Object>());
        FASetAssertMapNavigator navigator = new FASetAssertMapNavigator(null, expectedMapAssert);

        // When
        FAMapAssert actualMapAssert = navigator.back();

        // Then
        System.assert(expectedMapAssert === actualMapAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSame() {
        // Given
        Set<Object> actual = new Set<Object>();
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(actual, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>(), (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.isNotSame(new Set<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>(), (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator((Set<Object>) null, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{null}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.isEqualTo(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.isNotEqualTo(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        FASetAssertMapNavigator expectedNavigator = new FASetAssertMapNavigator(new Set<Object>{'X'}, (FAMapAssert) null);

        // When
        FASetAssertMapNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

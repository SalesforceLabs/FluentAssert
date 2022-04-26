/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class SetAssertMapNavigatorTest {
    @IsTest
    static void testAndThen() {
        // Given
        MapAssert expectedAssert = Assert.that(new Map<Object, Object>());
        SetAssertMapNavigator navigator = new SetAssertMapNavigator(null, expectedAssert);

        // When
        MapAssert actualAssert      = navigator.andThen();
        MapAssert deprecatedAssert  = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsSame() {
        // Given
        Set<Object> actual = new Set<Object>();
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(actual, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>(), (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.isNotSame(new Set<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>(), (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator((Set<Object>) null, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{null}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.isEqualTo(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.isNotEqualTo(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        SetAssertMapNavigator expectedNavigator = new SetAssertMapNavigator(new Set<Object>{'X'}, (MapAssert) null);

        // When
        SetAssertMapNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerAssertMapNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        MapAssert expectedAssert = Assert.that(new Map<Object, Object>());
        IntegerAssertMapNavigator navigator = new IntegerAssertMapNavigator(null, expectedAssert);

        // When
        MapAssert actualAssert     = navigator.andThen();
        MapAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(-1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(-1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(0, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(null, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(0, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator(1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator((Integer) 1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IntegerAssertMapNavigator expectedNavigator = new IntegerAssertMapNavigator((Integer) 1, (MapAssert) null);

        // When
        IntegerAssertMapNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

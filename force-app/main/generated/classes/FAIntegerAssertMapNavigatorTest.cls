/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class FAIntegerAssertMapNavigatorTest {

    @IsTest
    static void testBack() {
        // Given
        FAMapAssert expectedMapAssert = FluentAssert.that(new Map<Object, Object>());
        FAIntegerAssertMapNavigator navigator = new FAIntegerAssertMapNavigator(null, expectedMapAssert);

        // When
        FAMapAssert actualMapAssert = navigator.back();

        // Then
        System.assert(expectedMapAssert === actualMapAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNegative() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(-1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(-1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(0, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(null, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(0, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        FAIntegerAssertMapNavigator expectedNavigator = new FAIntegerAssertMapNavigator(1, (FAMapAssert) null);

        // When
        FAIntegerAssertMapNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

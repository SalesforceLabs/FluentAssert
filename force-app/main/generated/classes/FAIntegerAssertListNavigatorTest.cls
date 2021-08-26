/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FAIntegerAssertListNavigatorTest {

    @IsTest
    static void testBack() {
        // Given
        FAListAssert expectedListAssert = FluentAssert.that(new List<Object>());
        FAIntegerAssertListNavigator navigator = new FAIntegerAssertListNavigator(null, expectedListAssert);

        // When
        FAListAssert actualListAssert = navigator.back();

        // Then
        System.assert(expectedListAssert === actualListAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNegative() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(-1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(-1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(0, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(null, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(0, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        FAIntegerAssertListNavigator expectedNavigator = new FAIntegerAssertListNavigator(1, (FAListAssert) null);

        // When
        FAIntegerAssertListNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

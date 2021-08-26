/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FAIntegerAssertSetNavigatorTest {

    @IsTest
    static void testBack() {
        // Given
        FASetAssert expectedSetAssert = FluentAssert.that(new Set<Object>());
        FAIntegerAssertSetNavigator navigator = new FAIntegerAssertSetNavigator(null, expectedSetAssert);

        // When
        FASetAssert actualSetAssert = navigator.back();

        // Then
        System.assert(expectedSetAssert === actualSetAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNegative() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(-1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(-1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(0, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(null, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(0, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        FAIntegerAssertSetNavigator expectedNavigator = new FAIntegerAssertSetNavigator(1, (FASetAssert) null);

        // When
        FAIntegerAssertSetNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

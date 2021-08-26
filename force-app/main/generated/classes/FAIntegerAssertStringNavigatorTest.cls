/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FAIntegerAssertStringNavigatorTest {

    @IsTest
    static void testBack() {
        // Given
        FAStringAssert expectedStringAssert = FluentAssert.that('');
        FAIntegerAssertStringNavigator navigator = new FAIntegerAssertStringNavigator(null, expectedStringAssert);

        // When
        FAStringAssert actualStringAssert = navigator.back();

        // Then
        System.assert(expectedStringAssert === actualStringAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNegative() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(-1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(-1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(0, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(null, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(0, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        FAIntegerAssertStringNavigator expectedNavigator = new FAIntegerAssertStringNavigator(1, (FAStringAssert) null);

        // When
        FAIntegerAssertStringNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class FAIntegerAssertBlobNavigatorTest {

    @IsTest
    static void testBack() {
        // Given
        FABlobAssert expectedBlobAssert = FluentAssert.that(Blob.valueOf('X'));
        FAIntegerAssertBlobNavigator navigator = new FAIntegerAssertBlobNavigator(null, expectedBlobAssert);

        // When
        FABlobAssert actualBlobAssert = navigator.back();

        // Then
        System.assert(expectedBlobAssert === actualBlobAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNegative() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(-1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(-1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(0, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(null, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(0, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        FAIntegerAssertBlobNavigator expectedNavigator = new FAIntegerAssertBlobNavigator(1, (FABlobAssert) null);

        // When
        FAIntegerAssertBlobNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

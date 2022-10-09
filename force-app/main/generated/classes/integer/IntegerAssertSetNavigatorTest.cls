/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerAssertSetNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        SetAssert expectedAssert = Assert.that(new Set<Object>());
        IntegerAssertSetNavigator navigator = new IntegerAssertSetNavigator(null, expectedAssert);

        // When
        SetAssert actualAssert     = navigator.andThen();
        SetAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(-1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(-1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(0, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(null, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(0, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator(1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator((Integer) 1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IntegerAssertSetNavigator expectedNavigator = new IntegerAssertSetNavigator((Integer) 1, (SetAssert) null);

        // When
        IntegerAssertSetNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

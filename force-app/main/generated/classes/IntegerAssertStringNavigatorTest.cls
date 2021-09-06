/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerAssertStringNavigatorTest {

    @IsTest
    static void testBack() {
        // Given
        StringAssert expectedStringAssert = Assert.that('');
        IntegerAssertStringNavigator navigator = new IntegerAssertStringNavigator(null, expectedStringAssert);

        // When
        StringAssert actualStringAssert = navigator.back();

        // Then
        System.assert(expectedStringAssert === actualStringAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(-1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(-1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(0, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(null, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(0, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IntegerAssertStringNavigator expectedNavigator = new IntegerAssertStringNavigator(1, (StringAssert) null);

        // When
        IntegerAssertStringNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

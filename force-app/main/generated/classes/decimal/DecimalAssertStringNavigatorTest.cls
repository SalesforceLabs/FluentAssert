/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DecimalAssertStringNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        StringAssert expectedStringAssert = Assert.that('');
        DecimalAssertStringNavigator navigator = new DecimalAssertStringNavigator(null, expectedStringAssert);

        // When
        StringAssert actualStringAssert     = navigator.andThen();
        StringAssert deprecatedStringAssert = navigator.back();

        // Then
        Assert.that(expectedStringAssert).isSame(actualStringAssert);
        Assert.that(deprecatedStringAssert).isSame(actualStringAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(-1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(-1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(0, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(null, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(0, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator(1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator((Decimal) 1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Decimal) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        DecimalAssertStringNavigator expectedNavigator = new DecimalAssertStringNavigator((Decimal) 1, (StringAssert) null);

        // When
        DecimalAssertStringNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Decimal) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

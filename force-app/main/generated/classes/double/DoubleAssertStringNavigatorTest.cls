/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DoubleAssertStringNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        StringAssert expectedStringAssert = Assert.that('');
        DoubleAssertStringNavigator navigator = new DoubleAssertStringNavigator(null, expectedStringAssert);

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
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(-1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(-1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(0, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(null, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(0, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator(1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator((Double) 1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Double) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        DoubleAssertStringNavigator expectedNavigator = new DoubleAssertStringNavigator((Double) 1, (StringAssert) null);

        // When
        DoubleAssertStringNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Double) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

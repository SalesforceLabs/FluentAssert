/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class LongAssertStringNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        StringAssert expectedStringAssert = Assert.that('');
        LongAssertStringNavigator navigator = new LongAssertStringNavigator(null, expectedStringAssert);

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
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(-1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(-1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(0, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(null, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(0, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator(1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator((Long) 1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Long) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        LongAssertStringNavigator expectedNavigator = new LongAssertStringNavigator((Long) 1, (StringAssert) null);

        // When
        LongAssertStringNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Long) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

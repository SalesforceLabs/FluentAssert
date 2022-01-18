/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerAssertListNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        ListAssert expectedListAssert = Assert.that(new List<Object>());
        IntegerAssertListNavigator navigator = new IntegerAssertListNavigator(null, expectedListAssert);

        // When
        ListAssert actualListAssert     = navigator.andThen();
        ListAssert deprecatedListAssert = navigator.back();

        // Then
        Assert.that(expectedListAssert).isSame(actualListAssert);
        Assert.that(deprecatedListAssert).isSame(actualListAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(-1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(-1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(0, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(null, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(0, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IntegerAssertListNavigator expectedNavigator = new IntegerAssertListNavigator(1, (ListAssert) null);

        // When
        IntegerAssertListNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

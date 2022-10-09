/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerAssertListDBDeleteNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        ListDeleteResultAssert expectedAssert = Assert.that(new List<Database.DeleteResult>());
        IntegerAssertListDBDeleteNavigator navigator = new IntegerAssertListDBDeleteNavigator(null, expectedAssert);

        // When
        ListDeleteResultAssert actualAssert     = navigator.andThen();
        ListDeleteResultAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(-1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(-1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(0, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(null, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(0, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator(1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator((Integer) 1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IntegerAssertListDBDeleteNavigator expectedNavigator = new IntegerAssertListDBDeleteNavigator((Integer) 1, (ListDeleteResultAssert) null);

        // When
        IntegerAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

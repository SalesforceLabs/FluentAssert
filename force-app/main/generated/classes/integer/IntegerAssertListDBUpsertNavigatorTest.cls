/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerAssertListDBUpsertNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        ListUpsertResultAssert expectedAssert = Assert.that(new List<Database.UpsertResult>());
        IntegerAssertListDBUpsertNavigator navigator = new IntegerAssertListDBUpsertNavigator(null, expectedAssert);

        // When
        ListUpsertResultAssert actualAssert     = navigator.andThen();
        ListUpsertResultAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(-1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(-1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(0, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(null, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(0, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator(1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator((Integer) 1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IntegerAssertListDBUpsertNavigator expectedNavigator = new IntegerAssertListDBUpsertNavigator((Integer) 1, (ListUpsertResultAssert) null);

        // When
        IntegerAssertListDBUpsertNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

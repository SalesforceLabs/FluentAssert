/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerAssertListDBSaveNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        ListSaveResultAssert expectedAssert = Assert.that(new List<Database.SaveResult>());
        IntegerAssertListDBSaveNavigator navigator = new IntegerAssertListDBSaveNavigator(null, expectedAssert);

        // When
        ListSaveResultAssert actualAssert     = navigator.andThen();
        ListSaveResultAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(-1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(-1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(0, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(null, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(0, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator(1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator((Integer) 1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IntegerAssertListDBSaveNavigator expectedNavigator = new IntegerAssertListDBSaveNavigator((Integer) 1, (ListSaveResultAssert) null);

        // When
        IntegerAssertListDBSaveNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

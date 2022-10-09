/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerAssertListDBUndeleteNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        ListUndeleteResultAssert expectedAssert = Assert.that(new List<Database.UndeleteResult>());
        IntegerAssertListDBUndeleteNavigator navigator = new IntegerAssertListDBUndeleteNavigator(null, expectedAssert);

        // When
        ListUndeleteResultAssert actualAssert     = navigator.andThen();
        ListUndeleteResultAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(-1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(-1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(0, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(null, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(0, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator(1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator((Integer) 1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IntegerAssertListDBUndeleteNavigator expectedNavigator = new IntegerAssertListDBUndeleteNavigator((Integer) 1, (ListUndeleteResultAssert) null);

        // When
        IntegerAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

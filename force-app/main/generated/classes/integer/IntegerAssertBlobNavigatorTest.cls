/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IntegerAssertBlobNavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        BlobAssert expectedBlobAssert = Assert.that(Blob.valueOf('X'));
        IntegerAssertBlobNavigator navigator = new IntegerAssertBlobNavigator(null, expectedBlobAssert);

        // When
        BlobAssert actualBlobAssert     = navigator.andThen();
        BlobAssert deprecatedBlobAssert = navigator.back();

        // Then
        Assert.that(expectedBlobAssert).isSame(actualBlobAssert);
        Assert.that(deprecatedBlobAssert).isSame(actualBlobAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(-1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(-1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(0, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(null, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(0, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator(1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator((Integer) 1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IntegerAssertBlobNavigator expectedNavigator = new IntegerAssertBlobNavigator((Integer) 1, (BlobAssert) null);

        // When
        IntegerAssertBlobNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Integer) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

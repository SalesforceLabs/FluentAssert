/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class StringAssertExceptionNavigatorTest {
    @IsTest
    static void testBack() {
        // Given
        ExceptionAssert expectedExceptionAssert = Assert.that(new UnexpectedException('FluentAssert message'));
        StringAssertExceptionNavigator navigator = new StringAssertExceptionNavigator(null, expectedExceptionAssert);

        // When
        ExceptionAssert actualExceptionAssert = navigator.back();

        // Then
        Assert.that(expectedExceptionAssert).isSame(actualExceptionAssert);
    }

    @IsTest
    static void testIsNull() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator(null, (ExceptionAssert) null);
        
        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsSame() {
        // Given
        String self = 'X';
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator(self, (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isSame(self);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('X', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isNotSame('Y');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('X', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isEqualTo('X');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('X', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isNotEqualTo('Y');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAllLowerCase() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isAllLowerCase();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAllUpperCase() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('ABC', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isAllUpperCase();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAlpha() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abcABC', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isAlpha();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAlphaSpace() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abcABC ', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isAlphaSpace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAlphanumeric() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('a1B2', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isAlphanumeric();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAlphanumericSpace() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('a1B2 ', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isAlphanumericSpace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAsciiPrintable() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abcd1234!@#$%^*()`~-_+={[}]|:<,>.?', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isAsciiPrintable();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNumeric() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('09123456789', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isNumeric();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNumericSpace() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('09123456789 ', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isNumericSpace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsWhitespace() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator(' ', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isWhitespace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsBlank() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator(' ', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isBlank();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotBlank() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('a', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isNotBlank();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator(' ', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsWhitespace() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('a ', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.containsWhitespace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContains() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.contains('bc');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsAny() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.containsAny('b');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsIgnoreCase() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.containsIgnoreCase('BC');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsNone() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.containsNone('d');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.containsOnly('cab');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testEndsWith() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.endsWith('bc');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testEndsWithIgnoreCase() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.endsWithIgnoreCase('BC');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testEqualsIgnoreCase() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.equalsIgnoreCase('ABC');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testStartsWith() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.startsWith('ab');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testStartsWithIgnoreCase() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('abc', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.startsWithIgnoreCase('AB');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsInSet() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('X', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        StringAssertExceptionNavigator expectedNavigator = new StringAssertExceptionNavigator('X', (ExceptionAssert) null);

        // When
        StringAssertExceptionNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

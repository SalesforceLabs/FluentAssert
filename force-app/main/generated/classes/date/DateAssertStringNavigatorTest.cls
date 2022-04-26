/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DateAssertStringNavigatorTest {
    private static final Date SELF = Date.newInstance(1982, 05, 12);

    @IsTest
    static void testAndThen() {
        // Given
        StringAssert expectedStringAssert = Assert.that('');
        DateAssertStringNavigator navigator = new DateAssertStringNavigator(null, expectedStringAssert);

        // When
        StringAssert actualStringAssert     = navigator.andThen();
        StringAssert deprecatedStringAssert = navigator.back();

        // Then
        Assert.that(expectedStringAssert).isSame(actualStringAssert);
        Assert.that(deprecatedStringAssert).isSame(actualStringAssert);
    }

    @IsTest
    static void testIsNull() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(null, (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isEqualTo(Date.newInstance(1982, 05, 12));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isNotEqualTo(Date.newInstance(1982, 05, 12).addDays(1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSame() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(SELF, (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isSame(SELF);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isNotSame(Date.newInstance(1982, 05, 12));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isBetween(Date.newInstance(1982, 05, 12), Date.newInstance(1982, 05, 12));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isStrictlyBetween(Date.newInstance(1982, 05, 12).addDays(-1), Date.newInstance(1982, 05, 12).addDays(1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsAfter() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isAfter(Date.newInstance(1982, 05, 12).addDays(-1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsAfterOrEqualTo() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isAfterOrEqualTo(Date.newInstance(1982, 05, 12));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBefore() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isBefore(Date.newInstance(1982, 05, 12).addDays(1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBeforeOrEqualTo() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator(Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isBeforeOrEqualTo(Date.newInstance(1982, 05, 12));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator((Date) Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Date) Date.newInstance(1982, 05, 12)});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        DateAssertStringNavigator expectedNavigator = new DateAssertStringNavigator((Date) Date.newInstance(1982, 05, 12), (StringAssert) null);

        // When
        DateAssertStringNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Date) Date.newInstance(1982, 05, 12)});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

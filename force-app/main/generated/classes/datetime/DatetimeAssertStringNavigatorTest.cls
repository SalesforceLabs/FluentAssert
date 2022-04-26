/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class DatetimeAssertStringNavigatorTest {
    private static final Datetime SELF = Datetime.newInstance(1982, 05, 12, 01, 02, 03);

    @IsTest
    static void testAndThen() {
        // Given
        StringAssert expectedStringAssert = Assert.that('');
        DatetimeAssertStringNavigator navigator = new DatetimeAssertStringNavigator(null, expectedStringAssert);

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
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(null, (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isEqualTo(Datetime.newInstance(1982, 05, 12, 01, 02, 03));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isNotEqualTo(Datetime.newInstance(1982, 05, 12, 01, 02, 03).addDays(1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSame() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(SELF, (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isSame(SELF);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isNotSame(Datetime.newInstance(1982, 05, 12, 01, 02, 03));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isBetween(Datetime.newInstance(1982, 05, 12, 01, 02, 03), Datetime.newInstance(1982, 05, 12, 01, 02, 03));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isStrictlyBetween(Datetime.newInstance(1982, 05, 12, 01, 02, 03).addDays(-1), Datetime.newInstance(1982, 05, 12, 01, 02, 03).addDays(1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsAfter() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isAfter(Datetime.newInstance(1982, 05, 12, 01, 02, 03).addDays(-1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsAfterOrEqualTo() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isAfterOrEqualTo(Datetime.newInstance(1982, 05, 12, 01, 02, 03));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBefore() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isBefore(Datetime.newInstance(1982, 05, 12, 01, 02, 03).addDays(1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBeforeOrEqualTo() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator(Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isBeforeOrEqualTo(Datetime.newInstance(1982, 05, 12, 01, 02, 03));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInSet() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator((Datetime) Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{(Datetime) Datetime.newInstance(1982, 05, 12, 01, 02, 03)});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        DatetimeAssertStringNavigator expectedNavigator = new DatetimeAssertStringNavigator((Datetime) Datetime.newInstance(1982, 05, 12, 01, 02, 03), (StringAssert) null);

        // When
        DatetimeAssertStringNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{(Datetime) Datetime.newInstance(1982, 05, 12, 01, 02, 03)});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

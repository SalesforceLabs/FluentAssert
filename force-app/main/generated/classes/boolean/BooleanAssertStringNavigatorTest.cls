/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class BooleanAssertStringNavigatorTest {
    private static final Boolean SELF = true;

    @IsTest
    static void testAndThen() {
        // Given
        StringAssert expectedStringAssert = Assert.that('X');
        BooleanAssertStringNavigator navigator = new BooleanAssertStringNavigator(null, expectedStringAssert);

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
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(null, (StringAssert) null);
        
        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(false, (StringAssert) null);

        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsSame() {
        // Given
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(SELF, (StringAssert) null);

        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isSame(SELF);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(true, (StringAssert) null);

        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isNotSame(false);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(true, (StringAssert) null);

        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isEqualTo(true);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(true, (StringAssert) null);

        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isNotEqualTo(false);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsTrue() {
        // Given
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(true, (StringAssert) null);

        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isTrue();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsFalse() {
        // Given
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(false, (StringAssert) null);

        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isFalse();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsInSet() {
        // Given
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(true, (StringAssert) null);

        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{true});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        BooleanAssertStringNavigator expectedNavigator = new BooleanAssertStringNavigator(true, (StringAssert) null);

        // When
        BooleanAssertStringNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{true});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

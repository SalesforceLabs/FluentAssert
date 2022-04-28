/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IdAssertStringNavigatorTest {
    private static final Id SELF = UserInfo.getProfileId();

    @IsTest
    static void testAndThen() {
        // Given
        StringAssert expectedStringAssert = Assert.that('X');
        IdAssertStringNavigator navigator = new IdAssertStringNavigator(null, expectedStringAssert);

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
        IdAssertStringNavigator expectedNavigator = new IdAssertStringNavigator(null, (StringAssert) null);
        
        // When
        IdAssertStringNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IdAssertStringNavigator expectedNavigator = new IdAssertStringNavigator(UserInfo.getProfileId(), (StringAssert) null);

        // When
        IdAssertStringNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsSame() {
        // Given
        IdAssertStringNavigator expectedNavigator = new IdAssertStringNavigator(SELF, (StringAssert) null);

        // When
        IdAssertStringNavigator actualNavigator = expectedNavigator.isSame(SELF);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        IdAssertStringNavigator expectedNavigator = new IdAssertStringNavigator(UserInfo.getProfileId(), (StringAssert) null);

        // When
        IdAssertStringNavigator actualNavigator = expectedNavigator.isNotSame(UserInfo.getUserId());

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IdAssertStringNavigator expectedNavigator = new IdAssertStringNavigator(UserInfo.getProfileId(), (StringAssert) null);

        // When
        IdAssertStringNavigator actualNavigator = expectedNavigator.isEqualTo(UserInfo.getProfileId());

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IdAssertStringNavigator expectedNavigator = new IdAssertStringNavigator(UserInfo.getProfileId(), (StringAssert) null);

        // When
        IdAssertStringNavigator actualNavigator = expectedNavigator.isNotEqualTo(false);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsSObjectType() {
        // Given
        IdAssertStringNavigator expectedNavigator = new IdAssertStringNavigator(UserInfo.getProfileId(), (StringAssert) null);

        // When
        IdAssertStringNavigator actualNavigator = expectedNavigator.isSObjectType(Profile.SObjectType);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsInSet() {
        // Given
        IdAssertStringNavigator expectedNavigator = new IdAssertStringNavigator(UserInfo.getProfileId(), (StringAssert) null);

        // When
        IdAssertStringNavigator actualNavigator = expectedNavigator.isIn(new Set<Object>{UserInfo.getProfileId()});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsInList() {
        // Given
        IdAssertStringNavigator expectedNavigator = new IdAssertStringNavigator(UserInfo.getProfileId(), (StringAssert) null);

        // When
        IdAssertStringNavigator actualNavigator = expectedNavigator.isIn(new List<Object>{UserInfo.getProfileId()});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

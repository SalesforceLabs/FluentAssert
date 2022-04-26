<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->

<#assign navigators = [
    {"nativeDataType":"String", "emptyValue": "'X'"}
]>
<@pp.dropOutputFile />
<#list navigators as n>
  <@com.apexClass className="IdAssert${n.nativeDataType}NavigatorTest" path="/classes/id/"/>
@IsTest
public class IdAssert${n.nativeDataType}NavigatorTest {
    private static final Id SELF = UserInfo.getProfileId();

    @IsTest
    static void testAndThen() {
        // Given
        ${n.nativeDataType}Assert expected${n.nativeDataType}Assert = Assert.that(${n.emptyValue});
        IdAssert${n.nativeDataType}Navigator navigator = new IdAssert${n.nativeDataType}Navigator(null, expected${n.nativeDataType}Assert);

        // When
        ${n.nativeDataType}Assert actual${n.nativeDataType}Assert     = navigator.andThen();
        ${n.nativeDataType}Assert deprecated${n.nativeDataType}Assert = navigator.back();

        // Then
        Assert.that(expected${n.nativeDataType}Assert).isSame(actual${n.nativeDataType}Assert);
        Assert.that(deprecated${n.nativeDataType}Assert).isSame(actual${n.nativeDataType}Assert);
    }

    @IsTest
    static void testIsNull() {
        // Given
        IdAssert${n.nativeDataType}Navigator expectedNavigator = new IdAssert${n.nativeDataType}Navigator(null, (${n.nativeDataType}Assert) null);
        
        // When
        IdAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IdAssert${n.nativeDataType}Navigator expectedNavigator = new IdAssert${n.nativeDataType}Navigator(UserInfo.getProfileId(), (${n.nativeDataType}Assert) null);

        // When
        IdAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsSame() {
        // Given
        IdAssert${n.nativeDataType}Navigator expectedNavigator = new IdAssert${n.nativeDataType}Navigator(SELF, (${n.nativeDataType}Assert) null);

        // When
        IdAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isSame(SELF);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        IdAssert${n.nativeDataType}Navigator expectedNavigator = new IdAssert${n.nativeDataType}Navigator(UserInfo.getProfileId(), (${n.nativeDataType}Assert) null);

        // When
        IdAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotSame(UserInfo.getUserId());

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IdAssert${n.nativeDataType}Navigator expectedNavigator = new IdAssert${n.nativeDataType}Navigator(UserInfo.getProfileId(), (${n.nativeDataType}Assert) null);

        // When
        IdAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isEqualTo(UserInfo.getProfileId());

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IdAssert${n.nativeDataType}Navigator expectedNavigator = new IdAssert${n.nativeDataType}Navigator(UserInfo.getProfileId(), (${n.nativeDataType}Assert) null);

        // When
        IdAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotEqualTo(false);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsSObjectType() {
        // Given
        IdAssert${n.nativeDataType}Navigator expectedNavigator = new IdAssert${n.nativeDataType}Navigator(UserInfo.getProfileId(), (${n.nativeDataType}Assert) null);

        // When
        IdAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isSObjectType(Profile.SObjectType);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

<#list ["Set", "List"] as colType>
    @IsTest
    static void testIsIn${colType}() {
        // Given
        IdAssert${n.nativeDataType}Navigator expectedNavigator = new IdAssert${n.nativeDataType}Navigator(UserInfo.getProfileId(), (${n.nativeDataType}Assert) null);

        // When
        IdAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isIn(new ${colType}<Object>{UserInfo.getProfileId()});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
<#sep>

</#list>
}
</#list>
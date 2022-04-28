<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->

<#assign navigators = [
    {"nativeDataType":"String", "emptyValue": "'X'"}
]>
<@pp.dropOutputFile />
<#list navigators as n>
  <@com.apexClass className="BooleanAssert${n.nativeDataType}NavigatorTest" path="/classes/boolean/"/>
@IsTest
public class BooleanAssert${n.nativeDataType}NavigatorTest {
    private static final Boolean SELF = true;

    @IsTest
    static void testAndThen() {
        // Given
        ${n.nativeDataType}Assert expected${n.nativeDataType}Assert = Assert.that(${n.emptyValue});
        BooleanAssert${n.nativeDataType}Navigator navigator = new BooleanAssert${n.nativeDataType}Navigator(null, expected${n.nativeDataType}Assert);

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
        BooleanAssert${n.nativeDataType}Navigator expectedNavigator = new BooleanAssert${n.nativeDataType}Navigator(null, (${n.nativeDataType}Assert) null);
        
        // When
        BooleanAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        BooleanAssert${n.nativeDataType}Navigator expectedNavigator = new BooleanAssert${n.nativeDataType}Navigator(false, (${n.nativeDataType}Assert) null);

        // When
        BooleanAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsSame() {
        // Given
        BooleanAssert${n.nativeDataType}Navigator expectedNavigator = new BooleanAssert${n.nativeDataType}Navigator(SELF, (${n.nativeDataType}Assert) null);

        // When
        BooleanAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isSame(SELF);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        BooleanAssert${n.nativeDataType}Navigator expectedNavigator = new BooleanAssert${n.nativeDataType}Navigator(true, (${n.nativeDataType}Assert) null);

        // When
        BooleanAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotSame(false);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        BooleanAssert${n.nativeDataType}Navigator expectedNavigator = new BooleanAssert${n.nativeDataType}Navigator(true, (${n.nativeDataType}Assert) null);

        // When
        BooleanAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isEqualTo(true);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        BooleanAssert${n.nativeDataType}Navigator expectedNavigator = new BooleanAssert${n.nativeDataType}Navigator(true, (${n.nativeDataType}Assert) null);

        // When
        BooleanAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotEqualTo(false);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsTrue() {
        // Given
        BooleanAssert${n.nativeDataType}Navigator expectedNavigator = new BooleanAssert${n.nativeDataType}Navigator(true, (${n.nativeDataType}Assert) null);

        // When
        BooleanAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isTrue();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsFalse() {
        // Given
        BooleanAssert${n.nativeDataType}Navigator expectedNavigator = new BooleanAssert${n.nativeDataType}Navigator(false, (${n.nativeDataType}Assert) null);

        // When
        BooleanAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isFalse();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

<#list ["Set", "List"] as colType>
    @IsTest
    static void testIsIn${colType}() {
        // Given
        BooleanAssert${n.nativeDataType}Navigator expectedNavigator = new BooleanAssert${n.nativeDataType}Navigator(true, (${n.nativeDataType}Assert) null);

        // When
        BooleanAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isIn(new ${colType}<Object>{true});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
<#sep>

</#list>
}
</#list>
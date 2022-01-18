<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign navigators = [
    {"nativeDataType":"List",   "castingValue":"List<Object>",        "emptyValue": "new List<Object>()"},
    {"nativeDataType":"Set",    "castingValue":"Set<Object>",         "emptyValue": "new Set<Object>()"},
    {"nativeDataType":"Map",    "castingValue":"Map<Object, Object>", "emptyValue": "new Map<Object, Object>()"}
    {"nativeDataType":"String", "castingValue":"String",              "emptyValue": "''"},
    {"nativeDataType":"Blob",   "castingValue":"Blob",                "emptyValue": "Blob.valueOf('X')"}
]>
<@pp.dropOutputFile />
<#list navigators as n>
  <@com.apexClass className="IntegerAssert${n.nativeDataType}NavigatorTest" path="/classes/"/>
@IsTest
public class IntegerAssert${n.nativeDataType}NavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        ${n.nativeDataType}Assert expected${n.nativeDataType}Assert = Assert.that(${n.emptyValue});
        IntegerAssert${n.nativeDataType}Navigator navigator = new IntegerAssert${n.nativeDataType}Navigator(null, expected${n.nativeDataType}Assert);

        // When
        ${n.nativeDataType}Assert actual${n.nativeDataType}Assert     = navigator.andThen();
        ${n.nativeDataType}Assert deprecated${n.nativeDataType}Assert = navigator.back();

        // Then
        Assert.that(expected${n.nativeDataType}Assert).isSame(actual${n.nativeDataType}Assert);
        Assert.that(deprecated${n.nativeDataType}Assert).isSame(actual${n.nativeDataType}Assert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(-1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(-1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(0, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(null, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(0, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

<#list ["Set", "List"] as colType>
    @IsTest
    static void testIsIn${colType}() {
        // Given
        IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new IntegerAssert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isIn(new ${colType}<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
<#sep>

</#list>
}
</#list>
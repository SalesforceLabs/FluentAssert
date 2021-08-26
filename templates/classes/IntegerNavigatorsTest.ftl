<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../common/apex-class.ftl" as com>

<#assign navigators = [
    {"nativeDataType":"List",   "castingValue":"List<Object>",        "emptyValue": "new List<Object>()"},
    {"nativeDataType":"Set",    "castingValue":"Set<Object>",         "emptyValue": "new Set<Object>()"},
    {"nativeDataType":"Map",    "castingValue":"Map<Object, Object>", "emptyValue": "new Map<Object, Object>()"}
    {"nativeDataType":"String", "castingValue":"String",              "emptyValue": "''"},
    {"nativeDataType":"Blob",   "castingValue":"Blob",                "emptyValue": "Blob.valueOf('X')"}
]>
<@pp.dropOutputFile />
<#list navigators as n>
  <@com.apexClass className="${classPrefix}IntegerAssert${n.nativeDataType}NavigatorTest" path="/classes/"/>
@IsTest
public class ${classPrefix}IntegerAssert${n.nativeDataType}NavigatorTest {

    @IsTest
    static void testBack() {
        // Given
        ${classPrefix}${n.nativeDataType}Assert expected${n.nativeDataType}Assert = FluentAssert.that(${n.emptyValue});
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator navigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(null, expected${n.nativeDataType}Assert);

        // When
        ${classPrefix}${n.nativeDataType}Assert actual${n.nativeDataType}Assert = navigator.back();

        // Then
        System.assert(expected${n.nativeDataType}Assert === actual${n.nativeDataType}Assert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNegative() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(-1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(-1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(0, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(null, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(0, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

<#list ["Set", "List"] as colType>
    @IsTest
    static void testIsIn${colType}() {
        // Given
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator expectedNavigator = new ${classPrefix}IntegerAssert${n.nativeDataType}Navigator(1, (${classPrefix}${n.nativeDataType}Assert) null);

        // When
        ${classPrefix}IntegerAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isIn(new ${colType}<Object>{1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
<#sep>

</#list>
}
</#list>
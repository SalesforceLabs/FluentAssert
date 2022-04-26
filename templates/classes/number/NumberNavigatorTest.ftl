<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberNavigators = [
    {
        "numberType": "Integer",
        "navigators": [
            {"nativeDataType":"List",   "castingValue":"List<Object>",        "emptyValue": "new List<Object>()"},
            {"nativeDataType":"Set",    "castingValue":"Set<Object>",         "emptyValue": "new Set<Object>()"},
            {"nativeDataType":"Map",    "castingValue":"Map<Object, Object>", "emptyValue": "new Map<Object, Object>()"}
            {"nativeDataType":"String", "castingValue":"String",              "emptyValue": "''"},
            {"nativeDataType":"Blob",   "castingValue":"Blob",                "emptyValue": "Blob.valueOf('X')"}
        ]
    },{
        "numberType": "Long",
        "navigators": [
            {"nativeDataType":"String", "castingValue":"String",              "emptyValue": "''"}
        ]
    },{
        "numberType": "Decimal",
        "navigators": [
            {"nativeDataType":"String", "castingValue":"String",              "emptyValue": "''"}
        ]
    },{
        "numberType": "Double",
        "navigators": [
            {"nativeDataType":"String", "castingValue":"String",              "emptyValue": "''"}
        ]
    }
]>

<@pp.dropOutputFile />
<#list numberNavigators as nt>
<#list nt.navigators as n>
  <@com.apexClass className="${nt.numberType}Assert${n.nativeDataType}NavigatorTest" path="/classes/${nt.numberType?lower_case}/"/>
@IsTest
public class ${nt.numberType}Assert${n.nativeDataType}NavigatorTest {

    @IsTest
    static void testAndThen() {
        // Given
        ${n.nativeDataType}Assert expected${n.nativeDataType}Assert = Assert.that(${n.emptyValue});
        ${nt.numberType}Assert${n.nativeDataType}Navigator navigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(null, expected${n.nativeDataType}Assert);

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
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(-1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(-1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(0, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(null, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(0, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator(1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

<#list ["Set", "List"] as colType>
    @IsTest
    static void testIsIn${colType}() {
        // Given
        ${nt.numberType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.numberType}Assert${n.nativeDataType}Navigator((${nt.numberType}) 1, (${n.nativeDataType}Assert) null);

        // When
        ${nt.numberType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isIn(new ${colType}<Object>{(${nt.numberType}) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
<#sep>

</#list>
}
</#list>
</#list>
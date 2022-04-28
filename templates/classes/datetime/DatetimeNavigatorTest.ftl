<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign datetimeNavigators = [
    {
        "datetimeType": "Datetime",
        "validValue":   "Datetime.newInstance(1982, 05, 12, 01, 02, 03)",
        "navigators": [
            {"nativeDataType":"String", "castingValue":"String", "emptyValue": "''"}
        ]
    },{
        "datetimeType": "Date",
        "validValue":   "Date.newInstance(1982, 05, 12)",
        "navigators": [
            {"nativeDataType":"String", "castingValue":"String", "emptyValue": "''"}
        ]
    }
]>

<@pp.dropOutputFile />
<#list datetimeNavigators as nt>
<#list nt.navigators as n>
  <@com.apexClass className="${nt.datetimeType}Assert${n.nativeDataType}NavigatorTest" path="/classes/${nt.datetimeType?lower_case}/"/>
@IsTest
public class ${nt.datetimeType}Assert${n.nativeDataType}NavigatorTest {
    private static final ${nt.datetimeType} SELF = ${nt.validValue};

    @IsTest
    static void testAndThen() {
        // Given
        ${n.nativeDataType}Assert expected${n.nativeDataType}Assert = Assert.that(${n.emptyValue});
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator navigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(null, expected${n.nativeDataType}Assert);

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
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(null, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isEqualTo(${nt.validValue});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotEqualTo(${nt.validValue}.addDays(1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSame() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(SELF, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isSame(SELF);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotSame(${nt.validValue});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isBetween(${nt.validValue}, ${nt.validValue});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isStrictlyBetween(${nt.validValue}.addDays(-1), ${nt.validValue}.addDays(1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsAfter() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isAfter(${nt.validValue}.addDays(-1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsAfterOrEqualTo() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isAfterOrEqualTo(${nt.validValue});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBefore() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isBefore(${nt.validValue}.addDays(1));

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBeforeOrEqualTo() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator(${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isBeforeOrEqualTo(${nt.validValue});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

<#list ["Set", "List"] as colType>
    @IsTest
    static void testIsIn${colType}() {
        // Given
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator expectedNavigator = new ${nt.datetimeType}Assert${n.nativeDataType}Navigator((${nt.datetimeType}) ${nt.validValue}, (${n.nativeDataType}Assert) null);

        // When
        ${nt.datetimeType}Assert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isIn(new ${colType}<Object>{(${nt.datetimeType}) ${nt.validValue}});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
<#sep>

</#list>
}
</#list>
</#list>
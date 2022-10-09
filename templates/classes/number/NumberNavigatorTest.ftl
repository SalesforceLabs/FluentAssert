<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberNavigators = [
    {
        "numberType": "Integer",
        "navigators": [
            {"castingValue":"List<Object>",                 "emptyValue": "new List<Object>()"},
            {"castingValue":"Set<Object>",                  "emptyValue": "new Set<Object>()"},
            {"castingValue":"Map<Object, Object>",          "emptyValue": "new Map<Object, Object>()"}
            {"castingValue":"String",                       "emptyValue": "''"},
            {"castingValue":"Blob",                         "emptyValue": "Blob.valueOf('X')"},
            {"castingValue":"List<Database.DeleteResult>",  "emptyValue": "new List<Database.DeleteResult>()"},
            {"castingValue":"List<Database.SaveResult>",    "emptyValue": "new List<Database.SaveResult>()"},
            {"castingValue":"List<Database.UndeleteResult>","emptyValue": "new List<Database.UndeleteResult>()"},
            {"castingValue":"List<Database.UpsertResult>",  "emptyValue": "new List<Database.UpsertResult>()"}
        ]
    },{
        "numberType": "Long",
        "navigators": [
            {"castingValue":"String",              "emptyValue": "''"}
        ]
    },{
        "numberType": "Decimal",
        "navigators": [
            {"castingValue":"String",              "emptyValue": "''"}
        ]
    },{
        "numberType": "Double",
        "navigators": [
            {"castingValue":"String",              "emptyValue": "''"}
        ]
    }
]>

<@pp.dropOutputFile />
<#list numberNavigators as nt>
<#list nt.navigators as n>
  <@com.apexClass className="${com.navigatorClass(nt.numberType, n.castingValue)?right_pad(40)?substring(0, 36)?trim}Test" path="/classes/${nt.numberType?lower_case}/"/>
@IsTest
public class ${com.navigatorClass(nt.numberType, n.castingValue)?right_pad(40)?substring(0, 36)?trim}Test {

    @IsTest
    static void testAndThen() {
        // Given
        ${com.classPrefix(n.castingValue)}Assert expectedAssert = Assert.that(${n.emptyValue});
        ${com.navigatorClass(nt.numberType, n.castingValue)} navigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(null, expectedAssert);

        // When
        ${com.classPrefix(n.castingValue)}Assert actualAssert     = navigator.andThen();
        ${com.classPrefix(n.castingValue)}Assert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsNegative() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(-1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsPositive() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNegative() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isNotNegative();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotPositive() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(-1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isNotPositive();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsOne() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isOne();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsZero() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(0, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotZero() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isNotZero();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(null, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(0, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isNotEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsBetween() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isBetween(1, 1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsStrictlyBetween() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isStrictlyBetween(0, 2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThan() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isLessThan(2);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsLessThanOrEqualTo() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isLessThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThan() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isGreaterThan(0);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsGreaterThanOrEqualTo() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}(1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isGreaterThanOrEqualTo(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

<#list ["Set", "List"] as colType>
    @IsTest
    static void testIsIn${colType}() {
        // Given
        ${com.navigatorClass(nt.numberType, n.castingValue)} expectedNavigator = new ${com.navigatorClass(nt.numberType, n.castingValue)}((${nt.numberType}) 1, (${com.classPrefix(n.castingValue)}Assert) null);

        // When
        ${com.navigatorClass(nt.numberType, n.castingValue)} actualNavigator = expectedNavigator.isIn(new ${colType}<Object>{(${nt.numberType}) 1});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
<#sep>

</#list>
}
</#list>
</#list>
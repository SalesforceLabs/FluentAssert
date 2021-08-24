<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../common/apex-class.ftl" as com>

<@pp.dropOutputFile />
<@com.apexClass className="${classPrefix}SetAssertMapNavigatorTest" path="/classes/"/>
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class ${classPrefix}SetAssertMapNavigatorTest {
    @IsTest
    static void testBack() {
        // Given
        ${classPrefix}MapAssert expectedMapAssert = FluentAssert.that(new Map<Object, Object>());
        ${classPrefix}SetAssertMapNavigator navigator = new ${classPrefix}SetAssertMapNavigator(null, expectedMapAssert);

        // When
        ${classPrefix}MapAssert actualMapAssert = navigator.back();

        // Then
        System.assert(expectedMapAssert === actualMapAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSame() {
        // Given
        Set<Object> actual = new Set<Object>();
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(actual, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>(), (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.isNotSame(new Set<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>(), (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator((Set<Object>) null, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{null}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.isEqualTo(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.isNotEqualTo(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ${classPrefix}SetAssertMapNavigator expectedNavigator = new ${classPrefix}SetAssertMapNavigator(new Set<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}SetAssertMapNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

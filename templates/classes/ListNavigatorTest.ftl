<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../common/apex-class.ftl" as com>

<@pp.dropOutputFile />
<@com.apexClass className="${classPrefix}ListAssertMapNavigatorTest" path="/classes/"/>
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class ${classPrefix}ListAssertMapNavigatorTest {
    @IsTest
    static void testBack() {
        // Given
        ${classPrefix}MapAssert expectedMapAssert = FluentAssert.that(new Map<Object, Object>());
        ${classPrefix}ListAssertMapNavigator navigator = new ${classPrefix}ListAssertMapNavigator(null, expectedMapAssert);

        // When
        ${classPrefix}MapAssert actualMapAssert = navigator.back();

        // Then
        System.assert(expectedMapAssert === actualMapAssert, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(actual, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>(), (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>(), (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator((List<Object>) null, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{null}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ${classPrefix}ListAssertMapNavigator expectedNavigator = new ${classPrefix}ListAssertMapNavigator(new List<Object>{'X'}, (${classPrefix}MapAssert) null);

        // When
        ${classPrefix}ListAssertMapNavigator actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

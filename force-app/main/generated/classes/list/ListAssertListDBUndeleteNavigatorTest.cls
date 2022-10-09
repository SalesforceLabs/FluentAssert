/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListAssertListDBUndeleteNavigatorTest {
    @IsTest
    static void testAndThen() {
        // Given
        ListUndeleteResultAssert expectedAssert = Assert.that(new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)});
        ListAssertListDBUndeleteNavigator navigator = new ListAssertListDBUndeleteNavigator(null, expectedAssert);

        // When
        ListUndeleteResultAssert actualAssert     = navigator.andThen();
        ListUndeleteResultAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(actual, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>(), (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>(), (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator((List<Object>) null, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{null}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ListAssertListDBUndeleteNavigator expectedNavigator = new ListAssertListDBUndeleteNavigator(new List<Object>{'X'}, (ListUndeleteResultAssert) null);

        // When
        ListAssertListDBUndeleteNavigator actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

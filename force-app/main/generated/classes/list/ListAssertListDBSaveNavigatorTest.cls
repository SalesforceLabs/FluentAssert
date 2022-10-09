/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListAssertListDBSaveNavigatorTest {
    @IsTest
    static void testAndThen() {
        // Given
        ListSaveResultAssert expectedAssert = Assert.that(new List<Database.SaveResult>{DatabaseXResultUtil.createSaveResult(true)});
        ListAssertListDBSaveNavigator navigator = new ListAssertListDBSaveNavigator(null, expectedAssert);

        // When
        ListSaveResultAssert actualAssert     = navigator.andThen();
        ListSaveResultAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(actual, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>(), (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>(), (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator((List<Object>) null, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{null}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ListAssertListDBSaveNavigator expectedNavigator = new ListAssertListDBSaveNavigator(new List<Object>{'X'}, (ListSaveResultAssert) null);

        // When
        ListAssertListDBSaveNavigator actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

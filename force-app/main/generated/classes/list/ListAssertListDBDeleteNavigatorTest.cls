/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListAssertListDBDeleteNavigatorTest {
    @IsTest
    static void testAndThen() {
        // Given
        ListDeleteResultAssert expectedAssert = Assert.that(new List<Database.DeleteResult>{DatabaseXResultUtil.createDeleteResult(true)});
        ListAssertListDBDeleteNavigator navigator = new ListAssertListDBDeleteNavigator(null, expectedAssert);

        // When
        ListDeleteResultAssert actualAssert     = navigator.andThen();
        ListDeleteResultAssert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(actual, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>(), (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>(), (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator((List<Object>) null, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{null}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ListAssertListDBDeleteNavigator expectedNavigator = new ListAssertListDBDeleteNavigator(new List<Object>{'X'}, (ListDeleteResultAssert) null);

        // When
        ListAssertListDBDeleteNavigator actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}

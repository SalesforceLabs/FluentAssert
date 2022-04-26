<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<#assign navigators = [
    {
        "delegatingType": "Map",
        "instance":       "new Map<Object, Object>()"
    },{
        "delegatingType": "SObject",
        "instance":       "new Account()"
    }
]>
<#list navigators as n>
<@com.apexClass className="ListAssert${n.delegatingType}NavigatorTest" path="/classes/list/"/>
@IsTest
public class ListAssert${n.delegatingType}NavigatorTest {
    @IsTest
    static void testAndThen() {
        // Given
        ${n.delegatingType}Assert expectedAssert = Assert.that(${n.instance});
        ListAssert${n.delegatingType}Navigator navigator = new ListAssert${n.delegatingType}Navigator(null, expectedAssert);

        // When
        ${n.delegatingType}Assert actualAssert     = navigator.andThen();
        ${n.delegatingType}Assert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(actual, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>(), (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>(), (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator((List<Object>) null, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{null}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ListAssert${n.delegatingType}Navigator expectedNavigator = new ListAssert${n.delegatingType}Navigator(new List<Object>{'X'}, (${n.delegatingType}Assert) null);

        // When
        ListAssert${n.delegatingType}Navigator actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}
</#list>
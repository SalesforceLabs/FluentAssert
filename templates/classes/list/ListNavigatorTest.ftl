<#--
  - Copyright (c) 2021, Salesforce Inc.
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
    },{
        "delegatingType": "List<Database.DeleteResult>",
        "instance":       "new List<Database.DeleteResult>{DatabaseXResultUtil.createDeleteResult(true)}"
    },{
        "delegatingType": "List<Database.SaveResult>",
        "instance":       "new List<Database.SaveResult>{DatabaseXResultUtil.createSaveResult(true)}"
    },{
        "delegatingType": "List<Database.UndeleteResult>",
        "instance":       "new List<Database.UndeleteResult>{DatabaseXResultUtil.createUndeleteResult(true)}"
    },{
        "delegatingType": "List<Database.UpsertResult>",
        "instance":       "new List<Database.UpsertResult>{DatabaseXResultUtil.createUpsertResult(true, true)}"
    }
]>
<#list navigators as n>
<@com.apexClass className="${com.navigatorClass('List', n.delegatingType)}Test" path="/classes/list/"/>
@IsTest
public class ${com.navigatorClass('List', n.delegatingType)}Test {
    @IsTest
    static void testAndThen() {
        // Given
        ${com.classPrefix(n.delegatingType)}Assert expectedAssert = Assert.that(${n.instance});
        ${com.navigatorClass('List', n.delegatingType)} navigator = new ${com.navigatorClass('List', n.delegatingType)}(null, expectedAssert);

        // When
        ${com.classPrefix(n.delegatingType)}Assert actualAssert     = navigator.andThen();
        ${com.classPrefix(n.delegatingType)}Assert deprecatedAssert = navigator.back();

        // Then
        Assert.that(expectedAssert).isSame(actualAssert);
        Assert.that(deprecatedAssert).isSame(actualAssert);
    }

    @IsTest
    static void testIsSame() {
        // Given
        List<Object> actual = new List<Object>();
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(actual, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.isSame(actual);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>(), (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.isNotSame(new List<Object>());

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>(), (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.isEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsSorted() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.isSorted();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNull() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}((List<Object>) null, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.isNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.isNotNull();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyNulls() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{null}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsOnlyNulls();

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsList() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.contains(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSet() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.contains(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainList() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.doesNotContain(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSet() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.doesNotContain(new Set<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSize() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.hasSize(1);

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsList() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.hasSameSizeAs(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testHasSameSizeAsSet() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.hasSameSizeAs(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfSet() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsAnyOf(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsAnyOfList() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsAnyOf(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderList() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactlyInAnyOrderSet() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsExactlyInAnyOrder(new Set<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsExactly() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsExactly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSequence() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsSequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSequence() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.doesNotContainSequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsSubsequence() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsSubsequence(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testDoesNotContainSubsequence() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.doesNotContainSubsequence(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsOnly(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testContainsOnlyOnce() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.containsOnlyOnce(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.isEqualTo(new List<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        ${com.navigatorClass('List', n.delegatingType)} expectedNavigator = new ${com.navigatorClass('List', n.delegatingType)}(new List<Object>{'X'}, (${com.classPrefix(n.delegatingType)}Assert) null);

        // When
        ${com.navigatorClass('List', n.delegatingType)} actualNavigator = expectedNavigator.isNotEqualTo(new List<Object>{'Y'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
}
</#list>
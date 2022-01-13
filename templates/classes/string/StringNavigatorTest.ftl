<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->

<#assign navigators = [
    {"nativeDataType":"Exception", "castingValue":"List<Object>", "emptyValue": "new UnexpectedException('FluentAssert message')"}
]>
<@pp.dropOutputFile />
<#list navigators as n>
  <@com.apexClass className="StringAssert${n.nativeDataType}NavigatorTest" path="/classes/string/"/>
@IsTest
public class StringAssert${n.nativeDataType}NavigatorTest {
    @IsTest
    static void testBack() {
        // Given
        ${n.nativeDataType}Assert expected${n.nativeDataType}Assert = Assert.that(${n.emptyValue});
        StringAssert${n.nativeDataType}Navigator navigator = new StringAssert${n.nativeDataType}Navigator(null, expected${n.nativeDataType}Assert);

        // When
        ${n.nativeDataType}Assert actual${n.nativeDataType}Assert = navigator.back();

        // Then
        Assert.that(expected${n.nativeDataType}Assert).isSame(actual${n.nativeDataType}Assert);
    }

    @IsTest
    static void testIsNull() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator(null, (${n.nativeDataType}Assert) null);
        
        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotNull() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotNull();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsSame() {
        // Given
        String self = 'X';
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator(self, (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isSame(self);

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotSame() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('X', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotSame('Y');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsEqualTo() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('X', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isEqualTo('X');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotEqualTo() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('X', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotEqualTo('Y');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAllLowerCase() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isAllLowerCase();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAllUpperCase() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('ABC', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isAllUpperCase();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAlpha() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abcABC', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isAlpha();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAlphaSpace() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abcABC ', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isAlphaSpace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAlphanumeric() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('a1B2', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isAlphanumeric();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAlphanumericSpace() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('a1B2 ', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isAlphanumericSpace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsAsciiPrintable() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abcd1234!@#$%^*()`~-_+={[}]|:<,>.?', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isAsciiPrintable();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNumeric() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('09123456789', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNumeric();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNumericSpace() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('09123456789 ', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNumericSpace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsWhitespace() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator(' ', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isWhitespace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsBlank() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator(' ', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isBlank();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsEmpty() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isEmpty();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotBlank() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('a', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotBlank();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testIsNotEmpty() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator(' ', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isNotEmpty();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsWhitespace() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('a ', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.containsWhitespace();

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContains() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.contains('bc');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsAny() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.containsAny('b');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsIgnoreCase() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.containsIgnoreCase('BC');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsNone() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.containsNone('d');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testContainsOnly() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.containsOnly('cab');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testEndsWith() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.endsWith('bc');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testEndsWithIgnoreCase() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.endsWithIgnoreCase('BC');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testEqualsIgnoreCase() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.equalsIgnoreCase('ABC');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testStartsWith() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.startsWith('ab');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

    @IsTest
    static void testStartsWithIgnoreCase() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('abc', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.startsWithIgnoreCase('AB');

        // Then
        Assert.that(expectedNavigator).isSame(actualNavigator);
    }

<#list ["Set", "List"] as colType>
    @IsTest
    static void testIsIn${colType}() {
        // Given
        StringAssert${n.nativeDataType}Navigator expectedNavigator = new StringAssert${n.nativeDataType}Navigator('X', (${n.nativeDataType}Assert) null);

        // When
        StringAssert${n.nativeDataType}Navigator actualNavigator = expectedNavigator.isIn(new ${colType}<Object>{'X'});

        // Then
        System.assert(expectedNavigator === actualNavigator, 'Returned navigator should be self');
    }
<#sep>

</#list>
}
</#list>
/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `String`s
 */
global class StringAssert extends AssertBase {
    private String actual;

    /**
     * @description Constructs an instance with an actual `String` value.
     * @param actual The actual value to assert against.
     */
    global StringAssert(String actual) {
        this.actual = actual;
    }

    /**
     * @description Constructs a navigator that allows asserts on length(). Use `back()` to get back to asserts on `String`.
     * @return a navigator on length().
     */
    global IntegerAssertStringNavigator length() {
        notNull(actual, 'actual');
        return new IntegerAssertStringNavigator(actual.length(), this);
    }
    
   /**
     * @description Verifies that the lenght of the String matches.
     * @param expected expected length of actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if length of actual is not as expected
     */
    global StringAssert hasLength(Integer expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual.length() == expected, 'Expecting actual to have a length of {0}, but found {1}', new List<Object> {actual.length(), expected});
        return this;
    } 
    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not equal to `expected`.
     */
    global StringAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual == expected, 'Expecting {0} and {1} to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws AssertException if actual is not in expectedIn
     */
    global StringAssert isIn(List<Object> expectedIn) {
        notNull(actual, 'actual');
        assert(expectedIn.contains(actual), 'Was expecting {1} to be in {0}', new List<Object> {expectedIn, actual});
        return this;
    }

    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws AssertException if actual is not in expectedIn
     */
    global StringAssert isIn(Set<Object> expectedIn) {
        notNull(actual, 'actual');
        assert(expectedIn.contains(actual), 'Was expecting {1} to be in {0}', new List<Object> {expectedIn, actual});
        return this;
    }
 
    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is equal to `expected`.
     */
    global StringAssert isNotEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual != expected, 'Expecting {0} and {1} not to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not null.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is null.
     */
    global StringAssert isNotNull() {
        assert(actual != null, 'Expecting {0} not to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not same (part of memory) as `expected`.
     */
    global StringAssert isNotSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual !== expected, 'Expecting {0} and {1} not to be same', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is null.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual is not null.
     */
    global StringAssert isNull() {
        assert(actual == null, 'Expecting {0} to be null', new List<Object> {actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not is same (part of memory) as `expected`.
     */
    global StringAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual === expected, 'Expecting {0} and {1} to be same', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that contains the specified sequence of characters in substring. Simply delegates to `String.contains()` and was mostly added here to support a fluent programming style.
     * @param substring specified sequence of characters
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not contains the specified sequence of characters in substring.
     * @see String.contains
     */
    global StringAssert contains(String substring) {
        assert(actual.contains(substring), 'Expecting contains the specified sequence of characters in substring, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that contains any of the characters in expected. Simply delegates to `String.containsAny()` and was mostly added here to support a fluent programming style.
     * @param expected expected list fo characters
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not contains any of the characters in expected.
     * @see String.containsAny
     */
    global StringAssert containsAny(String expected) {
        assert(actual.containsAny(expected), 'Expecting contains any of the characters in expected, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that contains the specified sequence of characters without regard to case. Simply delegates to `String.containsIgnoreCase()` and was mostly added here to support a fluent programming style.
     * @param substring specified sequence of characters
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not contains the specified sequence of characters without regard to case.
     * @see String.containsIgnoreCase
     */
    global StringAssert containsIgnoreCase(String substring) {
        assert(actual.containsIgnoreCase(substring), 'Expecting contains the specified sequence of characters without regard to case, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that doesn’t contain any of the characters in notExpected. Simply delegates to `String.containsNone()` and was mostly added here to support a fluent programming style.
     * @param notExpected negative list of characters
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not doesn’t contain any of the characters in notExpected.
     * @see String.containsNone
     */
    global StringAssert containsNone(String notExpected) {
        assert(actual.containsNone(notExpected), 'Expecting doesn’t contain any of the characters in notExpected, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that contains characters only from the specified sequence of characters and not any other characters. Simply delegates to `String.containsOnly()` and was mostly added here to support a fluent programming style.
     * @param expected specified sequence of characters
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not contains characters only from the specified sequence of characters and not any other characters.
     * @see String.containsOnly
     */
    global StringAssert containsOnly(String expected) {
        assert(actual.containsOnly(expected), 'Expecting contains characters only from the specified sequence of characters and not any other characters, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that contains any white space characters. Simply delegates to `String.containsWhitespace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not contains any white space characters.
     * @see String.containsWhitespace
     */
    global StringAssert containsWhitespace() {
        assert(actual.containsWhitespace(), 'Expecting contains any white space characters, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that ends with the specified suffix. Simply delegates to `String.endsWith()` and was mostly added here to support a fluent programming style.
     * @param suffix suffix to assert against
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not ends with the specified suffix.
     * @see String.endsWith
     */
    global StringAssert endsWith(String suffix) {
        assert(actual.endsWith(suffix), 'Expecting ends with the specified suffix, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that ends with the specified suffix, case ignored. Simply delegates to `String.endsWithIgnoreCase()` and was mostly added here to support a fluent programming style.
     * @param suffix suffix to assert against
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not ends with the specified suffix, case ignored.
     * @see String.endsWithIgnoreCase
     */
    global StringAssert endsWithIgnoreCase(String suffix) {
        assert(actual.endsWithIgnoreCase(suffix), 'Expecting ends with the specified suffix, case ignored, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that is not null and represents the same sequence of characters as actual. Simply delegates to `String.equalsIgnoreCase()` and was mostly added here to support a fluent programming style.
     * @param expected expected sequence
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not is not null and represents the same sequence of characters as actual.
     * @see String.equalsIgnoreCase
     */
    global StringAssert equalsIgnoreCase(String expected) {
        assert(actual.equalsIgnoreCase(expected), 'Expecting is not null and represents the same sequence of characters as actual, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that all characters are lowercase. Simply delegates to `String.isAllLowerCase()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not all characters are lowercase.
     * @see String.isAllLowerCase
     */
    global StringAssert isAllLowerCase() {
        assert(actual.isAllLowerCase(), 'Expecting all characters are lowercase, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that all characters are uppercase. Simply delegates to `String.isAllUpperCase()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not all characters are uppercase.
     * @see String.isAllUpperCase
     */
    global StringAssert isAllUpperCase() {
        assert(actual.isAllUpperCase(), 'Expecting all characters are uppercase, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that all characters are Unicode letters only. Simply delegates to `String.isAlpha()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not all characters are Unicode letters only.
     * @see String.isAlpha
     */
    global StringAssert isAlpha() {
        assert(actual.isAlpha(), 'Expecting all characters are Unicode letters only, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that all characters are Unicode letters or numbers only. Simply delegates to `String.isAlphanumeric()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not all characters are Unicode letters or numbers only.
     * @see String.isAlphanumeric
     */
    global StringAssert isAlphanumeric() {
        assert(actual.isAlphanumeric(), 'Expecting all characters are Unicode letters or numbers only, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that all characters are Unicode letters, numbers, or spaces only. Simply delegates to `String.isAlphanumericSpace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not all characters are Unicode letters, numbers, or spaces only.
     * @see String.isAlphanumericSpace
     */
    global StringAssert isAlphanumericSpace() {
        assert(actual.isAlphanumericSpace(), 'Expecting all characters are Unicode letters, numbers, or spaces only, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that all characters are Unicode letters or spaces only. Simply delegates to `String.isAlphaSpace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not all characters are Unicode letters or spaces only.
     * @see String.isAlphaSpace
     */
    global StringAssert isAlphaSpace() {
        assert(actual.isAlphaSpace(), 'Expecting all characters are Unicode letters or spaces only, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that contains only ASCII printable characters. Simply delegates to `String.isAsciiPrintable()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not contains only ASCII printable characters.
     * @see String.isAsciiPrintable
     */
    global StringAssert isAsciiPrintable() {
        assert(actual.isAsciiPrintable(), 'Expecting contains only ASCII printable characters, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that the specified String is white space, empty (''), or null. Simply delegates to `String.isBlank()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not the specified String is white space, empty (''), or null.
     * @see String.isBlank
     */
    global StringAssert isBlank() {
        assert(String.isBlank(actual), 'Expecting the specified String is white space, empty (\'\'), or null, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that the specified String is empty ('') or null. Simply delegates to `String.isEmpty()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not the specified String is empty ('') or null.
     * @see String.isEmpty
     */
    global StringAssert isEmpty() {
        assert(String.isEmpty(actual), 'Expecting the specified String is empty (\'\') or null, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that the specified String is not whitespace, not empty (''), and not null. Simply delegates to `String.isNotBlank()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not the specified String is not whitespace, not empty (''), and not null.
     * @see String.isNotBlank
     */
    global StringAssert isNotBlank() {
        assert(String.isNotBlank(actual), 'Expecting the specified String is not whitespace, not empty (\'\'), and not null, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that the specified String is not empty ('') and not null. Simply delegates to `String.isNotEmpty()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not the specified String is not empty ('') and not null.
     * @see String.isNotEmpty
     */
    global StringAssert isNotEmpty() {
        assert(String.isNotEmpty(actual), 'Expecting the specified String is not empty (\'\') and not null, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that contains only Unicode digits. Simply delegates to `String.isNumeric()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not contains only Unicode digits.
     * @see String.isNumeric
     */
    global StringAssert isNumeric() {
        assert(actual.isNumeric(), 'Expecting contains only Unicode digits, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that only Unicode digits or spaces. Simply delegates to `String.isNumericSpace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not only Unicode digits or spaces.
     * @see String.isNumericSpace
     */
    global StringAssert isNumericSpace() {
        assert(actual.isNumericSpace(), 'Expecting only Unicode digits or spaces, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that contains only white space characters or is empty. Simply delegates to `String.isWhitespace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not contains only white space characters or is empty.
     * @see String.isWhitespace
     */
    global StringAssert isWhitespace() {
        assert(actual.isWhitespace(), 'Expecting contains only white space characters or is empty, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that begins with the specified prefix. Simply delegates to `String.startsWith()` and was mostly added here to support a fluent programming style.
     * @param prefix prefix to assert against
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not begins with the specified prefix.
     * @see String.startsWith
     */
    global StringAssert startsWith(String prefix) {
        assert(actual.startsWith(prefix), 'Expecting begins with the specified prefix, but found {0}', new List<Object> {actual});
        return this;
    }
    
    /**
     * @description Asserts that begins with the specified prefix, case ignored. Simply delegates to `String.startsWithIgnoreCase()` and was mostly added here to support a fluent programming style.
     * @param prefix prefix to assert against
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not begins with the specified prefix, case ignored.
     * @see String.startsWithIgnoreCase
     */
    global StringAssert startsWithIgnoreCase(String prefix) {
        assert(actual.startsWithIgnoreCase(prefix), 'Expecting begins with the specified prefix, case ignored, but found {0}', new List<Object> {actual});
        return this;
    }
}


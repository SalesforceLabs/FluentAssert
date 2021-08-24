/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `String`s
 */
public class FAStringAssert extends FAAssertBase {
    private String actual;

    /**
     * @description Constructs an instance with an actual `String` value.
     * @param actual The actual value to assert against.
     */
    public FAStringAssert(String actual) {
        this.actual = actual;
    }

    /**
     * @description Constructs a navigator that allows asserts on length(). Use `back()` to get back to asserts on `String`.
     * @return a navigator on length().
     */
    public FAIntegerAssertStringNavigator length() {
        notNull(actual, 'actual');
        return new FAIntegerAssertStringNavigator(actual.length(), this);
    }

   /**
     * @description Verifies that the lenght of the String matches.
     * @param expected expected length of actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if length of actual is not as expected
     */
    public FAStringAssert hasLength(Integer expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        if(actual.length() != expected) {
            throw new FluentAssert.AssertException(String.format('Expecting actual to have a length of {0}, but found {1}', new List<Object> {actual.length(), expected}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not equal to `expected`.
     */
    public FAStringAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');

        if(actual != expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be equal', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws FluentAssert.AssertException if actual is not in expectedIn
     */
    public FAStringAssert isIn(Set<Object> expectedIn) {
        notNull(actual, 'actual');

        if(!expectedIn.contains(actual)) {
            throw new FluentAssert.AssertException(String.format('Was expecting {0} to be in {1}', new List<Object> {actual, expectedIn}));
        }
        return this;
    }
    /**
     * @description Verifies that the actual is contained in expectedIn.
     * @param expectedIn collection that must contain actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expectedIn is null
     * @throws FluentAssert.AssertException if actual is not in expectedIn
     */
    public FAStringAssert isIn(List<Object> expectedIn) {
        notNull(actual, 'actual');

        if(!expectedIn.contains(actual)) {
            throw new FluentAssert.AssertException(String.format('Was expecting {0} to be in {1}', new List<Object> {actual, expectedIn}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is equal to `expected`.
     */
    public FAStringAssert isNotEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual == expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} not to be equal', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is not null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is null.
     */
    public FAStringAssert isNotNull() {
        if(actual == null) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} not to be null', new List<Object> {actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is not same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not same (part of memory) as `expected`.
     */
    public FAStringAssert isNotSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual === expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} not to be same', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is null.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if actual is not null.
     */
    public FAStringAssert isNull() {
        if(actual != null) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} to be null', new List<Object> {actual}));
        }
        return this;
    }

    /**
     * @description Asserts that `actual` is same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws FluentAssert.AssertException if actual is not is same (part of memory) as `expected`.
     */
    public FAStringAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        
        if(actual !== expected) {
            throw new FluentAssert.AssertException(String.format('Expecting {0} and {1} to be same', new List<Object> {expected, actual}));
        }
        return this;
    }

    /**
     * @description Asserts that contains the specified sequence of characters in substring. Simply delegates to `String.contains()` and was mostly added here to support a fluent programming style.
     * @param substring specified sequence of characters
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not contains the specified sequence of characters in substring.
     * @see String.contains
     */
    public FAStringAssert contains(String substring) {
        if(!actual.contains(substring)) {
            throw new FluentAssert.AssertException(String.format('Expecting contains the specified sequence of characters in substring, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that contains any of the characters in expected. Simply delegates to `String.containsAny()` and was mostly added here to support a fluent programming style.
     * @param expected expected list fo characters
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not contains any of the characters in expected.
     * @see String.containsAny
     */
    public FAStringAssert containsAny(String expected) {
        if(!actual.containsAny(expected)) {
            throw new FluentAssert.AssertException(String.format('Expecting contains any of the characters in expected, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that contains the specified sequence of characters without regard to case. Simply delegates to `String.containsIgnoreCase()` and was mostly added here to support a fluent programming style.
     * @param substring specified sequence of characters
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not contains the specified sequence of characters without regard to case.
     * @see String.containsIgnoreCase
     */
    public FAStringAssert containsIgnoreCase(String substring) {
        if(!actual.containsIgnoreCase(substring)) {
            throw new FluentAssert.AssertException(String.format('Expecting contains the specified sequence of characters without regard to case, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that doesn’t contain any of the characters in notExpected. Simply delegates to `String.containsNone()` and was mostly added here to support a fluent programming style.
     * @param notExpected negative list of characters
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not doesn’t contain any of the characters in notExpected.
     * @see String.containsNone
     */
    public FAStringAssert containsNone(String notExpected) {
        if(!actual.containsNone(notExpected)) {
            throw new FluentAssert.AssertException(String.format('Expecting doesn’t contain any of the characters in notExpected, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that contains characters only from the specified sequence of characters and not any other characters. Simply delegates to `String.containsOnly()` and was mostly added here to support a fluent programming style.
     * @param expected specified sequence of characters
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not contains characters only from the specified sequence of characters and not any other characters.
     * @see String.containsOnly
     */
    public FAStringAssert containsOnly(String expected) {
        if(!actual.containsOnly(expected)) {
            throw new FluentAssert.AssertException(String.format('Expecting contains characters only from the specified sequence of characters and not any other characters, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that contains any white space characters. Simply delegates to `String.containsWhitespace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not contains any white space characters.
     * @see String.containsWhitespace
     */
    public FAStringAssert containsWhitespace() {
        if(!actual.containsWhitespace()) {
            throw new FluentAssert.AssertException(String.format('Expecting contains any white space characters, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that ends with the specified suffix. Simply delegates to `String.endsWith()` and was mostly added here to support a fluent programming style.
     * @param suffix suffix to assert against
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not ends with the specified suffix.
     * @see String.endsWith
     */
    public FAStringAssert endsWith(String suffix) {
        if(!actual.endsWith(suffix)) {
            throw new FluentAssert.AssertException(String.format('Expecting ends with the specified suffix, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that ends with the specified suffix, case ignored. Simply delegates to `String.endsWithIgnoreCase()` and was mostly added here to support a fluent programming style.
     * @param suffix suffix to assert against
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not ends with the specified suffix, case ignored.
     * @see String.endsWithIgnoreCase
     */
    public FAStringAssert endsWithIgnoreCase(String suffix) {
        if(!actual.endsWithIgnoreCase(suffix)) {
            throw new FluentAssert.AssertException(String.format('Expecting ends with the specified suffix, case ignored, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that is not null and represents the same sequence of characters as actual. Simply delegates to `String.equalsIgnoreCase()` and was mostly added here to support a fluent programming style.
     * @param expected expected sequence
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not is not null and represents the same sequence of characters as actual.
     * @see String.equalsIgnoreCase
     */
    public FAStringAssert equalsIgnoreCase(String expected) {
        if(!actual.equalsIgnoreCase(expected)) {
            throw new FluentAssert.AssertException(String.format('Expecting is not null and represents the same sequence of characters as actual, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that all characters are lowercase. Simply delegates to `String.isAllLowerCase()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not all characters are lowercase.
     * @see String.isAllLowerCase
     */
    public FAStringAssert isAllLowerCase() {
        if(!actual.isAllLowerCase()) {
            throw new FluentAssert.AssertException(String.format('Expecting all characters are lowercase, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that all characters are uppercase. Simply delegates to `String.isAllUpperCase()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not all characters are uppercase.
     * @see String.isAllUpperCase
     */
    public FAStringAssert isAllUpperCase() {
        if(!actual.isAllUpperCase()) {
            throw new FluentAssert.AssertException(String.format('Expecting all characters are uppercase, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that all characters are Unicode letters only. Simply delegates to `String.isAlpha()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not all characters are Unicode letters only.
     * @see String.isAlpha
     */
    public FAStringAssert isAlpha() {
        if(!actual.isAlpha()) {
            throw new FluentAssert.AssertException(String.format('Expecting all characters are Unicode letters only, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that all characters are Unicode letters or numbers only. Simply delegates to `String.isAlphanumeric()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not all characters are Unicode letters or numbers only.
     * @see String.isAlphanumeric
     */
    public FAStringAssert isAlphanumeric() {
        if(!actual.isAlphanumeric()) {
            throw new FluentAssert.AssertException(String.format('Expecting all characters are Unicode letters or numbers only, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that all characters are Unicode letters, numbers, or spaces only. Simply delegates to `String.isAlphanumericSpace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not all characters are Unicode letters, numbers, or spaces only.
     * @see String.isAlphanumericSpace
     */
    public FAStringAssert isAlphanumericSpace() {
        if(!actual.isAlphanumericSpace()) {
            throw new FluentAssert.AssertException(String.format('Expecting all characters are Unicode letters, numbers, or spaces only, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that all characters are Unicode letters or spaces only. Simply delegates to `String.isAlphaSpace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not all characters are Unicode letters or spaces only.
     * @see String.isAlphaSpace
     */
    public FAStringAssert isAlphaSpace() {
        if(!actual.isAlphaSpace()) {
            throw new FluentAssert.AssertException(String.format('Expecting all characters are Unicode letters or spaces only, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that contains only ASCII printable characters. Simply delegates to `String.isAsciiPrintable()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not contains only ASCII printable characters.
     * @see String.isAsciiPrintable
     */
    public FAStringAssert isAsciiPrintable() {
        if(!actual.isAsciiPrintable()) {
            throw new FluentAssert.AssertException(String.format('Expecting contains only ASCII printable characters, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that the specified String is white space, empty (''), or null. Simply delegates to `String.isBlank()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not the specified String is white space, empty (''), or null.
     * @see String.isBlank
     */
    public FAStringAssert isBlank() {
        if(!String.isBlank(actual)) {
            throw new FluentAssert.AssertException(String.format('Expecting the specified String is white space, empty (\'\'), or null, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that the specified String is empty ('') or null. Simply delegates to `String.isEmpty()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not the specified String is empty ('') or null.
     * @see String.isEmpty
     */
    public FAStringAssert isEmpty() {
        if(!String.isEmpty(actual)) {
            throw new FluentAssert.AssertException(String.format('Expecting the specified String is empty (\'\') or null, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that the specified String is not whitespace, not empty (''), and not null. Simply delegates to `String.isNotBlank()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not the specified String is not whitespace, not empty (''), and not null.
     * @see String.isNotBlank
     */
    public FAStringAssert isNotBlank() {
        if(!String.isNotBlank(actual)) {
            throw new FluentAssert.AssertException(String.format('Expecting the specified String is not whitespace, not empty (\'\'), and not null, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that the specified String is not empty ('') and not null. Simply delegates to `String.isNotEmpty()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not the specified String is not empty ('') and not null.
     * @see String.isNotEmpty
     */
    public FAStringAssert isNotEmpty() {
        if(!String.isNotEmpty(actual)) {
            throw new FluentAssert.AssertException(String.format('Expecting the specified String is not empty (\'\') and not null, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that contains only Unicode digits. Simply delegates to `String.isNumeric()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not contains only Unicode digits.
     * @see String.isNumeric
     */
    public FAStringAssert isNumeric() {
        if(!actual.isNumeric()) {
            throw new FluentAssert.AssertException(String.format('Expecting contains only Unicode digits, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that only Unicode digits or spaces. Simply delegates to `String.isNumericSpace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not only Unicode digits or spaces.
     * @see String.isNumericSpace
     */
    public FAStringAssert isNumericSpace() {
        if(!actual.isNumericSpace()) {
            throw new FluentAssert.AssertException(String.format('Expecting only Unicode digits or spaces, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that contains only white space characters or is empty. Simply delegates to `String.isWhitespace()` and was mostly added here to support a fluent programming style.
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not contains only white space characters or is empty.
     * @see String.isWhitespace
     */
    public FAStringAssert isWhitespace() {
        if(!actual.isWhitespace()) {
            throw new FluentAssert.AssertException(String.format('Expecting contains only white space characters or is empty, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that begins with the specified prefix. Simply delegates to `String.startsWith()` and was mostly added here to support a fluent programming style.
     * @param prefix prefix to assert against
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not begins with the specified prefix.
     * @see String.startsWith
     */
    public FAStringAssert startsWith(String prefix) {
        if(!actual.startsWith(prefix)) {
            throw new FluentAssert.AssertException(String.format('Expecting begins with the specified prefix, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
    /**
     * @description Asserts that begins with the specified prefix, case ignored. Simply delegates to `String.startsWithIgnoreCase()` and was mostly added here to support a fluent programming style.
     * @param prefix prefix to assert against
     * @return this to allow further assert in a fluent manner
     * @throws FluentAssert.AssertException if not begins with the specified prefix, case ignored.
     * @see String.startsWithIgnoreCase
     */
    public FAStringAssert startsWithIgnoreCase(String prefix) {
        if(!actual.startsWithIgnoreCase(prefix)) {
            throw new FluentAssert.AssertException(String.format('Expecting begins with the specified prefix, case ignored, but found {0}', new List<Object> {actual}));
        }
        return this;
    }
    
}

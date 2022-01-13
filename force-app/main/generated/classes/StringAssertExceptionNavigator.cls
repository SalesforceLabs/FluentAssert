/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Exception` and `String`
 */
global class StringAssertExceptionNavigator {
    private String actual;
    private StringAssert assertDelegate;
    private ExceptionAssert originAssert;

    /**
     * @description Constructs an instance with an actual `String` value. Use `back()` to go back to `Exception`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global StringAssertExceptionNavigator(String actual, ExceptionAssert originAssert) {
        this.actual = actual;
        assertDelegate = new StringAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `Exception`.
     */
    global ExceptionAssert back() {
        return originAssert;
    }

    /**
     * @see StringAssert.isNull()
     */
    global StringAssertExceptionNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see StringAssert.isNotNull()
     */
    global StringAssertExceptionNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see StringAssert.isSame(Object)
     */
    global StringAssertExceptionNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see StringAssert.isNotSame(Object)
     */
    global StringAssertExceptionNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see StringAssert.isEqualTo(Object)
     */
    global StringAssertExceptionNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see StringAssert.isNotEqualTo(Object)
     */
    global StringAssertExceptionNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see StringAssert.isIn(List)
     */
    global StringAssertExceptionNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see StringAssert.isIn(Set)
     */
    global StringAssertExceptionNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see StringAssert.isAllLowerCase()
     */
    global StringAssertExceptionNavigator isAllLowerCase() {
        assertDelegate.isAllLowerCase();
        return this;
    }

    /**
     * @see StringAssert.isAllUpperCase()
     */
    global StringAssertExceptionNavigator isAllUpperCase() {
        assertDelegate.isAllUpperCase();
        return this;
    }

    /**
     * @see StringAssert.isAlpha()
     */
    global StringAssertExceptionNavigator isAlpha() {
        assertDelegate.isAlpha();
        return this;
    }

    /**
     * @see StringAssert.isAlphaSpace()
     */
    global StringAssertExceptionNavigator isAlphaSpace() {
        assertDelegate.isAlphaSpace();
        return this;
    }

    /**
     * @see StringAssert.isAlphanumeric()
     */
    global StringAssertExceptionNavigator isAlphanumeric() {
        assertDelegate.isAlphanumeric();
        return this;
    }

    /**
     * @see StringAssert.isAlphanumericSpace()
     */
    global StringAssertExceptionNavigator isAlphanumericSpace() {
        assertDelegate.isAlphanumericSpace();
        return this;
    }

    /**
     * @see StringAssert.isAsciiPrintable()
     */
    global StringAssertExceptionNavigator isAsciiPrintable() {
        assertDelegate.isAsciiPrintable();
        return this;
    }

    /**
     * @see StringAssert.isNumeric()
     */
    global StringAssertExceptionNavigator isNumeric() {
        assertDelegate.isNumeric();
        return this;
    }

    /**
     * @see StringAssert.isNumericSpace()
     */
    global StringAssertExceptionNavigator isNumericSpace() {
        assertDelegate.isNumericSpace();
        return this;
    }

    /**
     * @see StringAssert.isWhitespace()
     */
    global StringAssertExceptionNavigator isWhitespace() {
        assertDelegate.isWhitespace();
        return this;
    }

    /**
     * @see StringAssert.isBlank()
     */
    global StringAssertExceptionNavigator isBlank() {
        assertDelegate.isBlank();
        return this;
    }

    /**
     * @see StringAssert.isEmpty()
     */
    global StringAssertExceptionNavigator isEmpty() {
        assertDelegate.isEmpty();
        return this;
    }

    /**
     * @see StringAssert.isNotBlank()
     */
    global StringAssertExceptionNavigator isNotBlank() {
        assertDelegate.isNotBlank();
        return this;
    }

    /**
     * @see StringAssert.isNotEmpty()
     */
    global StringAssertExceptionNavigator isNotEmpty() {
        assertDelegate.isNotEmpty();
        return this;
    }

    /**
     * @see StringAssert.containsWhitespace()
     */
    global StringAssertExceptionNavigator containsWhitespace() {
        assertDelegate.containsWhitespace();
        return this;
    }

    /**
     * @see StringAssert.contains(String)
     */
    global StringAssertExceptionNavigator contains(String expected) {
        assertDelegate.contains(expected);
        return this;
    }

    /**
     * @see StringAssert.containsAny(String)
     */
    global StringAssertExceptionNavigator containsAny(String expected) {
        assertDelegate.containsAny(expected);
        return this;
    }

    /**
     * @see StringAssert.containsIgnoreCase(String)
     */
    global StringAssertExceptionNavigator containsIgnoreCase(String expected) {
        assertDelegate.containsIgnoreCase(expected);
        return this;
    }

    /**
     * @see StringAssert.containsNone(String)
     */
    global StringAssertExceptionNavigator containsNone(String expected) {
        assertDelegate.containsNone(expected);
        return this;
    }

    /**
     * @see StringAssert.containsOnly(String)
     */
    global StringAssertExceptionNavigator containsOnly(String expected) {
        assertDelegate.containsOnly(expected);
        return this;
    }

    /**
     * @see StringAssert.endsWith(String)
     */
    global StringAssertExceptionNavigator endsWith(String expected) {
        assertDelegate.endsWith(expected);
        return this;
    }

    /**
     * @see StringAssert.endsWithIgnoreCase(String)
     */
    global StringAssertExceptionNavigator endsWithIgnoreCase(String expected) {
        assertDelegate.endsWithIgnoreCase(expected);
        return this;
    }

    /**
     * @see StringAssert.equalsIgnoreCase(String)
     */
    global StringAssertExceptionNavigator equalsIgnoreCase(String expected) {
        assertDelegate.equalsIgnoreCase(expected);
        return this;
    }

    /**
     * @see StringAssert.startsWith(String)
     */
    global StringAssertExceptionNavigator startsWith(String expected) {
        assertDelegate.startsWith(expected);
        return this;
    }

    /**
     * @see StringAssert.startsWithIgnoreCase(String)
     */
    global StringAssertExceptionNavigator startsWithIgnoreCase(String expected) {
        assertDelegate.startsWithIgnoreCase(expected);
        return this;
    }
}

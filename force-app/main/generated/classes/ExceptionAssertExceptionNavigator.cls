/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `Exception` and `Exception`
 */
global class ExceptionAssertExceptionNavigator {
    private Exception actual;
    private ExceptionAssert assertDelegate;
    private ExceptionAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Exception` value. Use `back()` to go back to `Exception`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global ExceptionAssertExceptionNavigator(Exception actual, ExceptionAssert originAssert) {
        this.actual = actual;
        assertDelegate = new ExceptionAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Go back to `Exception`.
     */
    global ExceptionAssert back() {
        return originAssert;
    }

    /**
     * @see ExceptionAssert.isNull()
     */
    global ExceptionAssertExceptionNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see ExceptionAssert.isNotNull()
     */
    global ExceptionAssertExceptionNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see ExceptionAssert.isSame(Object)
     */
    global ExceptionAssertExceptionNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see ExceptionAssert.isNotSame(Object)
     */
    global ExceptionAssertExceptionNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see ExceptionAssert.isEqualTo(Object)
     */
    global ExceptionAssertExceptionNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see ExceptionAssert.isNotEqualTo(Object)
     */
    global ExceptionAssertExceptionNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see ExceptionAssert.isIn(List)
     */
    global ExceptionAssertExceptionNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see ExceptionAssert.isIn(Set)
     */
    global ExceptionAssertExceptionNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see ExceptionAssert.hasMessage(String)
     */
    global ExceptionAssertExceptionNavigator hasMessage(String message) {
        assertDelegate.hasMessage(message);
        return this;
    }

    /**
     * @see ExceptionAssert.hasCause()
     */
    global ExceptionAssertExceptionNavigator hasCause() {
        assertDelegate.hasCause();
        return this;
    }

    /**
     * @see ExceptionAssert.hasNoCause()
     */
    global ExceptionAssertExceptionNavigator hasNoCause() {
        assertDelegate.hasNoCause();
        return this;
    }
    /**
     * @see ExceptionAssert.getCause()
     */
    global ExceptionAssertExceptionNavigator cause() {
        return new ExceptionAssertExceptionNavigator(actual.getCause(), originAssert);
    }

    /**
     * @see ExceptionAssert.getCause()
     */
    global ExceptionAssertExceptionNavigator rootCause() {
        return new ExceptionAssertExceptionNavigator(ExceptionUtil.getRootCause(actual.getCause()), originAssert);
    }

    /**
     * @see StringAssert.getMessage()
     */
    global StringAssertExceptionNavigator message() {
        return new StringAssertExceptionNavigator(actual.getMessage(), originAssert);
    }
}

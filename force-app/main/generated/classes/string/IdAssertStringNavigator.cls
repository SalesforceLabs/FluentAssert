/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Navigator between `String` and `Id`
 */
global class IdAssertStringNavigator {
    private Id actual;
    private IdAssert assertDelegate;
    private StringAssert originAssert;

    /**
     * @description Constructs an instance with an actual `Id` value. Use `andThen()` to continue asserting on `String`.
     * @param actual The actual value to assert against.
     * @param originAssert The asserting type to go back to.
     */
    global IdAssertStringNavigator(Id actual, StringAssert originAssert) {
        this.actual = actual;
        assertDelegate = new IdAssert(actual);
        this.originAssert = originAssert;
    }

    /**
     * @description Continue asserting on `String`.
     */
    global StringAssert andThen() {
        return originAssert;
    }

    /**
     * @description Go back to `String`.
     * @see IdAssertStringNavigator.andThen()
     */
    global StringAssert back() {
        return andThen();
    }

    /**
     * @see IdAssert.isNull()
     */
    global IdAssertStringNavigator isNull() {
        assertDelegate.isNull();
        return this;
    }

    /**
     * @see IdAssert.isNotNull()
     */
    global IdAssertStringNavigator isNotNull() {
        assertDelegate.isNotNull();
        return this;
    }

    /**
     * @see IdAssert.isSame(Object)
     */
    global IdAssertStringNavigator isSame(Object expected) {
        assertDelegate.isSame(expected);
        return this;
    }

    /**
     * @see IdAssert.isNotSame(Object)
     */
    global IdAssertStringNavigator isNotSame(Object expected) {
        assertDelegate.isNotSame(expected);
        return this;
    }

    /**
     * @see IdAssert.isEqualTo(Object)
     */
    global IdAssertStringNavigator isEqualTo(Object expected) {
        assertDelegate.isEqualTo(expected);
        return this;
    }

    /**
     * @see IdAssert.isNotEqualTo(Object)
     */
    global IdAssertStringNavigator isNotEqualTo(Object expected) {
        assertDelegate.isNotEqualTo(expected);
        return this;
    }

    /**
     * @see IdAssert.isIn(List)
     */
    global IdAssertStringNavigator isIn(List<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see IdAssert.isIn(Set)
     */
    global IdAssertStringNavigator isIn(Set<Object> expected) {
        assertDelegate.isIn(expected);
        return this;
    }

    /**
     * @see IdAssert.isSObjectType(Schema.SObjectType)
     */
    global IdAssertStringNavigator isSObjectType(Schema.SObjectType sObjectType) {
        assertDelegate.isSObjectType(sObjectType);
        return this;
    }
}

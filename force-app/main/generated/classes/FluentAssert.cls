/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Better fluent asserts that takes (some...) of the pain away from unit testing in Apex.
 */
public inherited sharing class FluentAssert {
    /**
     * @description Fluent assert on `Blob`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Blob`
     */
    public static FABlobAssert that(Blob actual) {
        return new FABlobAssert(actual);
    }

    /**
     * @description Fluent assert on `Boolean`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Boolean`
     */
    public static FABooleanAssert that(Boolean actual) {
        return new FABooleanAssert(actual);
    }

    /**
     * @description Fluent assert on `Date`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Date`
     */
    public static FADateAssert that(Date actual) {
        return new FADateAssert(actual);
    }

    /**
     * @description Fluent assert on `Datetime`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Datetime`
     */
    public static FADatetimeAssert that(Datetime actual) {
        return new FADatetimeAssert(actual);
    }

    /**
     * @description Fluent assert on `Decimal`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Decimal`
     */
    public static FADecimalAssert that(Decimal actual) {
        return new FADecimalAssert(actual);
    }

    /**
     * @description Fluent assert on `Double`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Double`
     */
    public static FADoubleAssert that(Double actual) {
        return new FADoubleAssert(actual);
    }

    /**
     * @description Fluent assert on `Id`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Id`
     */
    public static FAIdAssert that(Id actual) {
        return new FAIdAssert(actual);
    }

    /**
     * @description Fluent assert on `Integer`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Integer`
     */
    public static FAIntegerAssert that(Integer actual) {
        return new FAIntegerAssert(actual);
    }

    /**
     * @description Fluent assert on `List`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `List`
     */
    public static FAListAssert that(List<Object> actual) {
        return new FAListAssert(actual);
    }

    /**
     * @description Fluent assert on `Long`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Long`
     */
    public static FALongAssert that(Long actual) {
        return new FALongAssert(actual);
    }

    /**
     * @description Fluent assert on `Map`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Map`
     */
    public static FAMapAssert that(Map<Object, Object> actual) {
        return new FAMapAssert(actual);
    }

    /**
     * @description Fluent assert on `Object`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Object`
     */
    public static FAObjectAssert that(Object actual) {
        return new FAObjectAssert(actual);
    }

    /**
     * @description Fluent assert on `Set`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Set`
     */
    public static FASetAssert that(Set<Object> actual) {
        return new FASetAssert(actual);
    }

    /**
     * @description Fluent assert on `String`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `String`
     */
    public static FAStringAssert that(String actual) {
        return new FAStringAssert(actual);
    }

    /**
     * @description Fluent assert on `Time`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Time`
     */
    public static FATimeAssert that(Time actual) {
        return new FATimeAssert(actual);
    }

    /**
     * @description Custom exception that will be thrown if any asserts fail.
     */
    public class AssertException extends Exception {}
}
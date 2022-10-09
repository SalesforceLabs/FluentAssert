/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Better fluent asserts that takes (some...) of the pain away from unit testing in Apex.
 */
global inherited sharing class Assert {
    /**
     * @description Fluent assert on `Blob`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Blob`
     */
    global static BlobAssert that(Blob actual) {
        return new BlobAssert(actual);
    }
    /**
     * @description Fluent assert on `Boolean`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Boolean`
     */
    global static BooleanAssert that(Boolean actual) {
        return new BooleanAssert(actual);
    }
    /**
     * @description Fluent assert on `Date`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Date`
     */
    global static DateAssert that(Date actual) {
        return new DateAssert(actual);
    }
    /**
     * @description Fluent assert on `Datetime`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Datetime`
     */
    global static DatetimeAssert that(Datetime actual) {
        return new DatetimeAssert(actual);
    }
    /**
     * @description Fluent assert on `Decimal`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Decimal`
     */
    global static DecimalAssert that(Decimal actual) {
        return new DecimalAssert(actual);
    }
    /**
     * @description Fluent assert on `Double`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Double`
     */
    global static DoubleAssert that(Double actual) {
        return new DoubleAssert(actual);
    }
    /**
     * @description Fluent assert on `Exception`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Exception`
     */
    global static ExceptionAssert that(Exception actual) {
        return new ExceptionAssert(actual);
    }
    /**
     * @description Fluent assert on `Id`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Id`
     */
    global static IdAssert that(Id actual) {
        return new IdAssert(actual);
    }
    /**
     * @description Fluent assert on `Integer`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Integer`
     */
    global static IntegerAssert that(Integer actual) {
        return new IntegerAssert(actual);
    }
    /**
     * @description Fluent assert on `List<Database.DeleteResult>`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `List<Database.DeleteResult>`
     */
    global static ListDeleteResultAssert that(List<Database.DeleteResult> actual) {
        return new ListDeleteResultAssert(actual);
    }
    /**
     * @description Fluent assert on `List<Database.SaveResult>`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `List<Database.SaveResult>`
     */
    global static ListSaveResultAssert that(List<Database.SaveResult> actual) {
        return new ListSaveResultAssert(actual);
    }
    /**
     * @description Fluent assert on `List<Database.UndeleteResult>`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `List<Database.UndeleteResult>`
     */
    global static ListUndeleteResultAssert that(List<Database.UndeleteResult> actual) {
        return new ListUndeleteResultAssert(actual);
    }
    /**
     * @description Fluent assert on `List<Database.UpsertResult>`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `List<Database.UpsertResult>`
     */
    global static ListUpsertResultAssert that(List<Database.UpsertResult> actual) {
        return new ListUpsertResultAssert(actual);
    }
    /**
     * @description Fluent assert on `List<Object>`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `List<Object>`
     */
    global static ListAssert that(List<Object> actual) {
        return new ListAssert(actual);
    }
    /**
     * @description Fluent assert on `Long`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Long`
     */
    global static LongAssert that(Long actual) {
        return new LongAssert(actual);
    }
    /**
     * @description Fluent assert on `Map<Object, Object>`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Map<Object, Object>`
     */
    global static MapAssert that(Map<Object, Object> actual) {
        return new MapAssert(actual);
    }
    /**
     * @description Fluent assert on `Object`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Object`
     */
    global static ObjectAssert that(Object actual) {
        return new ObjectAssert(actual);
    }
    /**
     * @description Fluent assert on `Set<Object>`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Set<Object>`
     */
    global static SetAssert that(Set<Object> actual) {
        return new SetAssert(actual);
    }
    /**
     * @description Fluent assert on `SObject`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `SObject`
     */
    global static SObjectAssert that(SObject actual) {
        return new SObjectAssert(actual);
    }
    /**
     * @description Fluent assert on `String`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `String`
     */
    global static StringAssert that(String actual) {
        return new StringAssert(actual);
    }
    /**
     * @description Fluent assert on `Time`s
     * @param actual The actual value to assert against.
     * @return Fluent assert object for `Time`
     */
    global static TimeAssert that(Time actual) {
        return new TimeAssert(actual);
    }
}
/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `SObject`s
 */
global class SObjectAssert extends AssertBase {
    private SObject actual;

    /**
     * @description Constructs an instance with an actual `SObject` value.
     * @param actual The actual value to assert against.
     */
    global SObjectAssert(SObject actual) {
        this.actual = actual;
    }

    
    /**
     * @description Extracts fields from actual as a ListAssert
     * @param fields Fields to extract seperated by comma
     * @return ListAssert-navigator for fluent asserts
     * @throws NullPointerException if actual or fields is null
     * @throws IllegalArgumentException if fields is empty or has invalid fields
     */
    global ListAssertSObjectNavigator extracting(String fields) {
      return extracting(SObjectFieldUtil.toList(actual.getSobjectType(), fields));
    }

    /**
     * @description Extracts fields from actual as a ListAssert
     * @param fields Fields to extract seperated by comma
     * @return ListAssert-navigator for fluent asserts
     * @throws NullPointerException if actual or fields is null
     * @throws IllegalArgumentException if fields is empty or has invalid fields
     */
    global ListAssertSObjectNavigator extracting(List<Schema.SObjectField> fields) {
      List<Object> values = new List<Object>();

      if(fields.isEmpty()) {
        throw new IllegalArgumentException('List of fields is empty');
      }

      for (Schema.SObjectField f : fields) {
        if(f == null) {
          throw new IllegalArgumentException('Field names can\'t be null');
        }
        values.add(actual.get(f));
      }

      return new ListAssertSObjectNavigator(values, this);
    }

 
   /**
     * @description Verifies that the SObject has errors
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if SObject had no errors
     */
    global SObjectAssert hasErrors() {
        notNull(actual, 'actual');
        assert(actual.hasErrors(), 'Expecting actual to have errors', new List<String>());
        return this;
    } 
   /**
     * @description Verifies that the SObject has no errors
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if SObject has errors
     */
    global SObjectAssert hasNoErrors() {
        notNull(actual, 'actual');
        assert(!actual.hasErrors(), 'Expecting actual to have no errors', new List<String>());
        return this;
    } 
   /**
     * @description Verifies that the SObject is a clone
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if SObject is a clone
     */
    global SObjectAssert isClone() {
        notNull(actual, 'actual');
        assert(actual.isClone(), 'Expecting actual to be a clone', new List<String>());
        return this;
    } 
    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not equal to `expected`.
     */
    global SObjectAssert isEqualTo(Object expected) {
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
    global SObjectAssert isIn(List<Object> expectedIn) {
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
    global SObjectAssert isIn(Set<Object> expectedIn) {
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
    global SObjectAssert isNotEqualTo(Object expected) {
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
    global SObjectAssert isNotNull() {
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
    global SObjectAssert isNotSame(Object expected) {
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
    global SObjectAssert isNull() {
        assert(actual == null, 'Expecting {0} to be null', new List<Object> {actual});
        return this;
    } 
   /**
     * @description Verifies that the SObject is a given record type. If recordtype is null the SObject will assumed having the default recordtype.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or developerName is null
     * @throws IllegalArgumentException if `developerName` is a invalid recordtype for the SObject
     * @throws AssertException if SObject is not a given record type
     */
    global SObjectAssert isRecordType(String developerName) {
        notNull(actual, 'actual');
        notNull(developerName, 'developerName');

        String actualRecordTypeDevName = actual.isSet('RecordTypeId') ? (String) actual.get('RecordTypeId') : SObjectTypeUtil.getDefaultRecordTypeInfo(Schema.SObjectType.Account).getDeveloperName();
        assert(developerName == actualRecordTypeDevName, 'Expected RecordType to be \'{0}\' but found \'{0}\'', new List<Object> {developerName, actualRecordTypeDevName});

        return this;
    } 
    /**
     * @description Asserts that `actual` is same (part of memory) as `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not is same (part of memory) as `expected`.
     */
    global SObjectAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual === expected, 'Expecting {0} and {1} to be same', new List<Object> {expected, actual});
        return this;
    }}


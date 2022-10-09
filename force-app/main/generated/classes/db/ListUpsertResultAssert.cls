/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Holds asserts for `List`s
 */
// PMD Suppression Justifications
// CyclomaticComplexity: It's the nature of assert classes to have a huge interface, meaning it'll be pretty complex
@SuppressWarnings('PMD.CyclomaticComplexity')
global class ListUpsertResultAssert extends AssertBase {
    private List<Database.UpsertResult> actual;
    private List<Database.UpsertResult> failureResults {
        get {
            if(this.failureResults == null) {
                failureResults = new List<Database.UpsertResult>();
                for (Database.UpsertResult result : actual) {
                    if (result.isSuccess() == false) {
                        failureResults.add(result);
                    }
                }
            }
            return failureResults;
        }
        
        private set;
    }
    private List<Database.UpsertResult> successResults {
        get {
            if(this.successResults == null) {
                successResults = new List<Database.UpsertResult>();
                for (Database.UpsertResult result : actual) {
                    if (result.isSuccess() == true) {
                        successResults.add(result);
                    }
                }
            }
            return successResults;
        }
        
        private set;
    }
    private List<Id> failureIds {
        get {
            if(this.failureIds == null) {
                failureIds = new List<Id>();
                for (Database.UpsertResult result : actual) {
                    if (result.isSuccess() == false) {
                        failureIds.add(result.getId());
                    }
                }
            }
            return failureIds;
        }
        
        private set;
    }
    private List<Id> successIds {
        get {
            if(this.successIds == null) {
                successIds = new List<Id>();
                for (Database.UpsertResult result : actual) {
                    if (result.isSuccess() == true) {
                        successIds.add(result.getId());
                    }
                }
            }
            return successIds;
        }
        
        private set;
    }

    /**
     * @description Constructs an instance with an actual `List<Database.UpsertResult>` value.
     * @param actual The actual value to assert against.
     */
    global ListUpsertResultAssert(List<Database.UpsertResult> actual) {
        this.actual = actual;
    }

    /**
     * @description Constructs a navigator that allows asserts on failureIds(). Use `andThen()` to continue asserting on `List`.
     * @return a navigator on failureIds().
     */
    global ListAssertListDBUpsertNavigator failureIds() {
        notNull(actual, 'actual');
        return new ListAssertListDBUpsertNavigator(failureIds, this);
    }

    /**
     * @description Constructs a navigator that allows asserts on size(). Use `andThen()` to continue asserting on `List`.
     * @return a navigator on size().
     */
    global IntegerAssertListDBUpsertNavigator size() {
        notNull(actual, 'actual');
        return new IntegerAssertListDBUpsertNavigator(actual.size(), this);
    }

    /**
     * @description Constructs a navigator that allows asserts on successIds(). Use `andThen()` to continue asserting on `List`.
     * @return a navigator on successIds().
     */
    global ListAssertListDBUpsertNavigator successIds() {
        notNull(actual, 'actual');
        return new ListAssertListDBUpsertNavigator(successIds, this);
    }

    
    /**
     * @description Asserts that `actual` is all failures.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual has at least one successful result.
     */
    global ListUpsertResultAssert isAllFailures() {
        notNull(actual, 'actual');
        notEmpty(actual, 'actual');
        assert(failureResults.size() == actual.size(), 'Found {0} failures in {0} results', new List<Object>{failureResults.size(), actual.size()});
        return this;
    } 
    /**
     * @description Asserts that `actual` is all successes.
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if actual has at least one failed result.
     */
    global ListUpsertResultAssert isAllsuccesses() {
        notNull(actual, 'actual');
        notEmpty(actual, 'actual');
        assert(successResults.size() == actual.size(), 'Found {0} successes in {0} results', new List<Object>{successResults.size(), actual.size()});
        return this;
    } 
    /**
     * @description Asserts that `actual` is equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is not equal to `expected`.
     */
    global ListUpsertResultAssert isEqualTo(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual == expected, 'Expecting {0} and {1} to be equal', new List<Object> {expected, actual});
        return this;
    } 
    /**
     * @description Asserts that `actual` is not equal to `expected`.
     * @param expected expected value to assert against
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null.
     * @throws AssertException if actual is equal to `expected`.
     */
    global ListUpsertResultAssert isNotEqualTo(Object expected) {
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
    global ListUpsertResultAssert isNotNull() {
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
    global ListUpsertResultAssert isNotSame(Object expected) {
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
    global ListUpsertResultAssert isNull() {
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
    global ListUpsertResultAssert isSame(Object expected) {
        notNull(actual, 'actual');
        notNull(expected, 'expected');
        assert(actual === expected, 'Expecting {0} and {1} to be same', new List<Object> {expected, actual});
        return this;
    }}


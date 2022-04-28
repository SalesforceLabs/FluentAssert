/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListDoesNotContainSubsequenceTest {
    private static final List<String> EMPTY_LIST = new List<String>();
    private static final List<String> PART_OF_ALPHABET = new List<String>{
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'
    };

    @IsTest
    static void testPositiveScenarios() {
        Assert.that(PART_OF_ALPHABET).doesNotContainSubsequence(new List<String>{'A', 'E', 'Z'});
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            Assert.that(PART_OF_ALPHABET).doesNotContainSubsequence(new List<String>{'A', 'E', 'I'});
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @IsTest
    static void testValidations() {
        validationScenario(null, PART_OF_ALPHABET);
        validationScenario(PART_OF_ALPHABET, null);

        // Empty inputs throws IllegalArgumentException
        try {
            Assert.that(PART_OF_ALPHABET).doesNotContainSubsequence(new List<Object>());
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void validationScenario(List<Object> actual, List<Object> expected) {
        try {
            Assert.that(actual).doesNotContainSubsequence(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}
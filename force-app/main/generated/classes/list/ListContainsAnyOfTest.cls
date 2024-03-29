/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListContainsAnyOfTest {
    private static final List<Object> EMPTY = new List<Object>();
    private static final List<Object> PART_OF_ALPHABET = new List<Object>{
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'
    };

    @IsTest
    static void testPositiveScenarios() {
        Assert.that(PART_OF_ALPHABET).containsAnyOf(new Set<Object>{'A', 'K'});
        Assert.that(PART_OF_ALPHABET).containsAnyOf(new List<Object>{'A', 'K'});
    }

    @IsTest
    static void testNegativeScenarios() {
        failureScenario(EMPTY, new List<Object>{'A', 'K'});
        failureScenario(PART_OF_ALPHABET, new List<Object>{'K', 'L'});
    }

    private static void failureScenario(List<Object> actual, List<Object> expected) {
        try {
            Assert.that(actual).containsAnyOf(expected);
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
        validationScenarioNPE(null, new List<Object>{'A', 'K'});
        validationScenarioNPE(null, new Set<Object>{'A', 'K'});
        validationScenarioNPE(PART_OF_ALPHABET, (List<Object>) null);
        validationScenarioNPE(PART_OF_ALPHABET, (Set<Object>) null);

        // Empty inputs throws IllegalArgumentException
        try {
            Assert.that(PART_OF_ALPHABET).containsAnyOf(new List<Object>());
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            Assert.that(PART_OF_ALPHABET).containsAnyOf(new Set<Object>());
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void validationScenarioNPE(List<Object> actual, List<Object> expected) {
        try {
            Assert.that(actual).containsAnyOf(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void validationScenarioNPE(List<Object> actual, Set<Object> expected) {
        try {
            Assert.that(actual).containsAnyOf(expected);
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

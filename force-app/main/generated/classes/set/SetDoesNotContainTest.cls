/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class SetDoesNotContainTest {
    private static final Set<Object> EMPTY = new Set<Object>();
    private static final Set<Object> PART_OF_ALPHABET = new Set<Object>{
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'
    };

    @IsTest
    static void testPositiveScenarios() {
        Assert.that(PART_OF_ALPHABET).doesNotContain(new List<Object>{'K', 'L', 'M'});
        Assert.that(PART_OF_ALPHABET).doesNotContain(new Set<Object>{'K', 'L', 'M'});
    }

    @IsTest
    static void testNegativeScenarios() {
        failureScenario(PART_OF_ALPHABET, new List<Object>{'A'});
        failureScenario(PART_OF_ALPHABET, new Set<Object>{'A'});
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Set<Object> actual, List<Object> expected) {
        try {
            Assert.that(actual).doesNotContain((List<Object>) expected);
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Set<Object> actual, Set<Object> expected) {
        try {
            Assert.that(actual).doesNotContain((Set<Object>) expected);
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
        validationScenario(null, new List<Object> {'A'});
        validationScenario(null, new Set<Object> {'A'});
        validationScenario(PART_OF_ALPHABET, (List<Object>) null);
        validationScenario(PART_OF_ALPHABET, (Set<Object>) null);

        // Empty inputs throws IllegalArgumentException
        try {
            Assert.that(PART_OF_ALPHABET).doesNotContain(new List<Object>());
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            Assert.that(PART_OF_ALPHABET).doesNotContain(new Set<Object>());
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Set<Object> actual, List<Object> expected) {
        try {
            Assert.that(actual).doesNotContain((List<Object>) expected);
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Set<Object> actual, Set<Object> expected) {
        try {
            Assert.that(actual).doesNotContain((Set<Object>) expected);
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

/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FASetContainsExactlyInAnyOrderTest {
    private static final Set<Object> EMPTY = new Set<Object>();
    private static final Set<Object> PART_OF_ALPHABET = new Set<Object>{
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'
    };

    @IsTest
    static void testPositiveScenarios() {
        FluentAssert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(PART_OF_ALPHABET);
        FluentAssert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new List<Object>{'J', 'I', 'H', 'G', 'F', 'E', 'D', 'C', 'B', 'A'});
        FluentAssert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new Set<Object>{'J', 'I', 'H', 'G', 'F', 'E', 'D', 'C', 'B', 'A'});
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            FluentAssert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new List<Object>{'K', 'L'});
            System.assert(false, 'No assert exception thrown');
        } catch(FluentAssert.AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            FluentAssert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new Set<Object>{'K', 'L'});
            System.assert(false, 'No assert exception thrown');
        } catch(FluentAssert.AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @IsTest
    static void testValidations() {
        validationScenario((Set<Object>) null, PART_OF_ALPHABET);
        validationScenario(PART_OF_ALPHABET, null);

        // Empty inputs throws IllegalArgumentException
        try {
            FluentAssert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new List<Object>());
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            FluentAssert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new Set<Object>());
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
    private static void validationScenario(Set<Object> actual, Set<Object> expected) {
        try {
            FluentAssert.that(actual).containsExactlyInAnyOrder(expected);
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

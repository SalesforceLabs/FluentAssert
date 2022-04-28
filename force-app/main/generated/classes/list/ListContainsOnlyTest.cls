/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListContainsOnlyTest {
    private static final List<Object> EMPTY = new List<Object>();
    private static final List<Object> ABC = new List<Object> {
        'A', 'B', 'C'
    };

    @IsTest
    static void testPositiveScenarios() {
        Assert.that(ABC)
                    .containsOnly(new List<String>{'C', 'B', 'A'})
                    .containsOnly(new List<String>{'A', 'A', 'B', 'C', 'C'});

        Assert.that(new List<Object>{'A', 'A', 'B', 'B'})
                    .containsOnly(new List<String>{'A', 'B'})
                    .containsOnly(new List<String>{'A', 'A', 'B', 'B'});
    }

    @IsTest
    static void testNegativeScenarios() {
        failureScenario(ABC, new List<String>{'A', 'B'});
        failureScenario(ABC, new List<String>{'A', 'B', 'C', 'D'});
    }

    private static void failureScenario(List<Object> actual, List<String> expected) {
        try {
            Assert.that(actual).containsOnly(expected);
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
        validationScenario(null, new List<Object>{'A'});
        validationScenario(ABC, (List<Object>) null);

        // Empty inputs throws IllegalArgumentException
        try {
            Assert.that(ABC).containsOnly(new List<Object>());
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
            Assert.that(actual).containsOnly(expected);
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

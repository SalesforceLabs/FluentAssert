/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListHasSameSizeAsTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that(new List<Object>{'X'}).hasSameSizeAs(new List<Object>{'Y'});
        Assert.that(new List<Object>{'X'}).hasSameSizeAs(new Set<Object>{'Y'});
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            Assert.that((List<Object>) new List<Object>{'X'}).hasSameSizeAs(new List<Object>{'X', 'Y'});
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            Assert.that((List<Object>) new List<Object>{'X'}).hasSameSizeAs(new Set<Object>{'X', 'Y'});
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
        validationScenario(null, new List<Object>());
        validationScenario(new List<Object>(), (List<Object>) null);
        validationScenario(null, new List<Object>());
        validationScenario(new List<Object>(), (Set<Object>) null);
    }

    private static void validationScenario(List<Object> actual, List<Object> expected) {
        try {
            Assert.that(actual).hasSameSizeAs(expected);
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void validationScenario(List<Object> actual, Set<Object> expected) {
        try {
            Assert.that(actual).hasSameSizeAs(expected);
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

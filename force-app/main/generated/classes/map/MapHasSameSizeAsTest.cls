/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class MapHasSameSizeAsTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that(new Map<Object, Object>{'X' => 'X'}).hasSameSizeAs(new Map<Object, Object>{'X' => 'X'});
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            Assert.that((Map<Object, Object>) new Map<Object, Object>{'X' => 'X'}).hasSameSizeAs(new Map<Object, Object>{'X' => 'X', 'Y' => 'Y'});
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
        validationScenario(null, new Map<Object, Object>());
        validationScenario(new Map<Object, Object>(), (Map<Object, Object>) null);
    }

    private static void validationScenario(Map<Object, Object> actual, Map<Object, Object> expected) {
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

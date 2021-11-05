/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class SObjectIsSameTest {
    private static final SObject SELF = new Account(Name = 'X');
    private static final Object OTHER = new Account(Name = 'Y');

    @IsTest
    static void testPositiveScenarios() {
        Assert.that((SObject) SELF).isSame(SELF);
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            Assert.that((SObject) SELF).isSame(OTHER);
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
        validationScenario((SObject) SELF, null);
        validationScenario(null, (SObject) SELF);
    }

    private static void validationScenario(SObject actual, Object expected) {
        try {
            Assert.that(actual).isSame(expected);
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

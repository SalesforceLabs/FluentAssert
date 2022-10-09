/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ListDeleteResultIsSameTest {
    private static final List<Database.DeleteResult> SELF = new List<Database.DeleteResult>{DatabaseXResultUtil.createDeleteResult(true)};
    private static final Object OTHER = new List<Database.DeleteResult>{DatabaseXResultUtil.createDeleteResult(true)};

    @IsTest
    static void testPositiveScenarios() {
        Assert.that((List<Database.DeleteResult>) SELF).isSame(SELF);
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            Assert.that((List<Database.DeleteResult>) SELF).isSame(OTHER);
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
        validationScenario((List<Database.DeleteResult>) SELF, null);
        validationScenario(null, (List<Database.DeleteResult>) SELF);
    }

    private static void validationScenario(List<Database.DeleteResult> actual, Object expected) {
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

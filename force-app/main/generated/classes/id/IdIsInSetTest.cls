/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class IdIsInSetTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((Id) UserInfo.getOrganizationId()).isIn((Set<Object>) new Set<Object>{(Id) UserInfo.getOrganizationId()});
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((Id) UserInfo.getOrganizationId(), new Set<Object>());
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void failureScenario(Id actual, Set<Object> expected) {
        try {
            Assert.that(actual).isIn(expected);
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
        validationScenario((Id) null, (Set<Object>) new Set<Object>{UserInfo.getOrganizationId()});
        validationScenario((Id) UserInfo.getOrganizationId(), (Set<Object>) null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Id actual, Set<Object> expected) {
        try {
            Assert.that(actual).isIn(expected);
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

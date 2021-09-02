<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="${classPrefix}IdIsSObjectTypeTest" path="/classes/id/"/>
@IsTest
public class ${classPrefix}IdIsSObjectTypeTest {
    @IsTest
    static void testPassingScenarios() {
        FluentAssert.that((Id) UserInfo.getUserId()).isSObjectType(User.SObjectType);
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            FluentAssert.that((Id) UserInfo.getUserId()).isSObjectType(Account.SObjectType);
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
        validationScenario(null, Account.SObjectType);
        validationScenario(UserInfo.getUserId(), null);
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void validationScenario(Id actual, Schema.SObjectType expected) {
        try {
            FluentAssert.that(actual).isSObjectType(expected);
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
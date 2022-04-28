<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="IdIsEqualToTest" path="/classes/id/"/>
@IsTest
public class IdIsEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((Id) UserInfo.getUserId()).isEqualTo(UserInfo.getUserId());
    }

    @IsTest
    static void testFailureScenarios() {
        failureScenario((Id) UserInfo.getUserId(), UserInfo.getProfileId());
    }

    private static void failureScenario(Id actual, Id expected) {
        try {
            Assert.that(actual).isEqualTo(expected);
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
        validationScenario(null, UserInfo.getUserId());
        validationScenario(UserInfo.getUserId(), null);
    }

    private static void validationScenario(Id actual, Id expected) {
        try {
            Assert.that(actual).IsEqualTo(expected);
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

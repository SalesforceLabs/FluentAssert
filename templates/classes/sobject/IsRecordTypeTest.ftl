<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="SObjectIsRecordTypeTest" path="/classes/sobject/"/>
@IsTest
public class SObjectIsRecordTypeTest {
    @IsTest
    static void testPositiveScenarios() {
        Schema.RecordTypeInfo defaultRT = SObjectTypeUtil.getDefaultRecordTypeInfo(Schema.SObjectType.Account);

        Assert.that(new Account())
              .isRecordType(defaultRT.getDeveloperName());

        // Welcome reviewers! There was no way to get RecordTypeId on Account without creating a 
        // RecordType, and since this is a managed package where the Records will go to real customer
        // Org, I decided against that ;-)
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            Assert.that(new Account())
                  .isRecordType('FluentAssert_NonExistingRT');
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
        try {
            Assert.that((SObject) null).isRecordType('N/A');
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
/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class SObjectIsRecordTypeTest {
    @IsTest
    static void testPositiveScenarios() {
        Schema.RecordTypeInfo defaultRT = SObjectTypeUtil.getDefaultRecordTypeInfo(Schema.SObjectType.Account);

        Assert.that(new Account())
              .isRecordType(defaultRT.getDeveloperName());
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            Assert.that(new Account())
                  .isRecordType('FluentAssert_NonExistingRT');
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
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
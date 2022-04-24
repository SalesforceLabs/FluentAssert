/**
 * This test verifies #14 in Github: https://github.com/SalesforceLabs/FluentAssert/issues/14
 */
@IsTest
public with sharing class GithubIssue14Test {
    private static final String ACC_CUST_RT_DEVNAME    = 'Customer';
    private static final Id ACC_CUST_RT_ID             = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get(ACC_CUST_RT_DEVNAME).getRecordTypeId();
    
    private static final String ACC_NONCUST_RT_DEVNAME = 'OtherThanCustomer';
    private static final Id ACC_NONCUST_RT_ID          = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get(ACC_NONCUST_RT_DEVNAME).getRecordTypeId();

    private static final String CON_HUMAN_RT_DEVNAME   = 'Human';
    private static final Id CON_HUMAN_RT_ID            = Schema.SObjectType.Contact.getRecordTypeInfosByDeveloperName().get(CON_HUMAN_RT_DEVNAME).getRecordTypeId();

    @IsTest
    static void verifyIssueFixed() {
        // Given / When
        Account a = new Account(
            RecordTypeId = ACC_CUST_RT_ID
        );

        // When / Then
        Fluent.Assert.that(a).isRecordType(ACC_CUST_RT_DEVNAME)
                             .isRecordType(ACC_CUST_RT_ID);
    }

    @IsTest
    static void verifyIssueFixedForNonAccount() {
        // Given / When
        Contact c = new Contact(
            RecordTypeId = CON_HUMAN_RT_ID
        );

        // When / Then
        Fluent.Assert.that(c).isRecordType(CON_HUMAN_RT_DEVNAME)
                             .isRecordType(CON_HUMAN_RT_ID);
    }

    @IsTest
    static void verifyIssueFixedNegativeScenarioDevName() {
        // Given
        Account a = new Account(
            RecordTypeId = ACC_CUST_RT_ID
        );

        // When / Then
        try {
            Fluent.Assert.that(a).isRecordType(ACC_NONCUST_RT_DEVNAME);
            System.assert(false, 'No assert exception thrown');
        } catch (AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @IsTest
    static void verifyIssueFixedNegativeScenarioRecTypeId() {
        // Given
        Account a = new Account(
            RecordTypeId = ACC_CUST_RT_ID
        );

        // When / Then
        try {
            Fluent.Assert.that(a).isRecordType(ACC_NONCUST_RT_ID);
            System.assert(false, 'No assert exception thrown');
        } catch (AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @IsTest
    static void testNonExistingThrowsIAEDevName() {
        // Given
        Account a = new Account(
            RecordTypeId = ACC_CUST_RT_ID
        );

        // When / Then
        try {
            Fluent.Assert.that(a).isRecordType('NonExistingDevName');
            System.assert(false, 'No assert exception thrown');
        } catch (IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @IsTest
    static void testNonExistingThrowsIAERecTypeId() {
        // Given
        Account a = new Account(
            RecordTypeId = ACC_CUST_RT_ID
        );

        // When / Then
        try {
            Fluent.Assert.that(a).isRecordType(CON_HUMAN_RT_ID);
            System.assert(false, 'No assert exception thrown');
        } catch (IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}

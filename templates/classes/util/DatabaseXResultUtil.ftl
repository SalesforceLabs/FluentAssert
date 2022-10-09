<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="DatabaseXResultUtil" path="/classes/util/"/>
/**
 * @description Utility class used to help with generating mock data.
 * Inspired and derived from code by https://github.com/jongpie/NebulaLogger
 */
@IsTest
public class DatabaseXResultUtil {
    private static final Map<Schema.SObjectType, Integer> SOBJECT_TYPE_TO_MOCK_ID_COUNT = new Map<Schema.SObjectType, Integer>();

    /**
     * @description Creates a mock instance of `Database.DeleteResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests). A fake
     *              record ID is automatically included.
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @return   The mock instance of `Database.DeleteResult`
     */
    public static Database.DeleteResult createDeleteResult(Boolean isSuccess) {
        return createDeleteResult(isSuccess, createId(Schema.Account.SObjectType));
    }

    /**
     * @description Creates a mock instance of `Database.DeleteResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests)
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @param  recordId  The record ID to use within the mock result
     * @return   The mock instance of `Database.DeleteResult`
     */
    public static Database.DeleteResult createDeleteResult(Boolean isSuccess, Id recordId) {
        if (isSuccess) {
            return (Database.DeleteResult) JSON.deserialize('{"success": true, "id": "' + recordId + '"}', Database.DeleteResult.class);
        } else {
            return (Database.DeleteResult) JSON.deserialize(
                '{"success":false,"errors":[{"message": "Could not delete...", "statusCode": "DELETE_FAILED"}]}',
                Database.DeleteResult.class
            );
        }
    }

    /**
     * @description Creates a mock instance of `Database.MergeResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests). A fake
     *              record ID is automatically included.
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @return   The mock instance of `Database.MergeResult`
     */
    public static Database.MergeResult createMergeResult(Boolean isSuccess) {
        return createMergeResult(isSuccess, createId(Schema.Account.SObjectType));
    }

    /**
     * @description Creates a mock instance of `Database.MergeResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests)
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @param  recordId  The record ID to use within the mock result
     * @return   The mock instance of `Database.MergeResult`
     */
    public static Database.MergeResult createMergeResult(Boolean isSuccess, Id recordId) {
        if (isSuccess) {
            return (Database.MergeResult) JSON.deserialize('{"success": true, "id": "' + recordId + '"}', Database.MergeResult.class);
        } else {
            return (Database.MergeResult) JSON.deserialize(
                '{"success":false,"errors":[{"message": "Could not merge...", "statusCode": "MERGE_FAILED"}]}',
                Database.MergeResult.class
            );
        }
    }

    /**
     * @description Creates a mock instance of `Database.SaveResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests). A fake
     *              record ID is automatically included.
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @return   The mock instance of `Database.SaveResult`
     */
    public static Database.SaveResult createSaveResult(Boolean isSuccess) {
        return createSaveResult(isSuccess, createId(Schema.Account.SObjectType));
    }

    /**
     * @description Creates a mock instance of `Database.SaveResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests)
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @param  recordId  The record ID to use within the mock result
     * @return   The mock instance of `Database.SaveResult`
     */
    public static Database.SaveResult createSaveResult(Boolean isSuccess, Id recordId) {
        if (isSuccess) {
            return (Database.SaveResult) JSON.deserialize('{"success": true, "id": "' + recordId + '"}', Database.SaveResult.class);
        } else {
            return (Database.SaveResult) JSON.deserialize(
                '{"success":false,"errors":[{"message": "Could not save...", "statusCode": "FIELD_CUSTOM_VALIDATION_EXCEPTION"}]}',
                Database.SaveResult.class
            );
        }
    }

    /**
     * @description Creates a mock instance of `Database.UndeleteResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests). A fake
     *              record ID is automatically included.
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @return   The mock instance of `Database.UndeleteResult`
     */
    public static Database.UndeleteResult createUndeleteResult(Boolean isSuccess) {
        return createUndeleteResult(isSuccess, createId(Schema.Account.SObjectType));
    }

    /**
     * @description Creates a mock instance of `Database.UndeleteResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests)
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @param  recordId  The record ID to use within the mock result
     * @return   The mock instance of `Database.UndeleteResult`
     */
    public static Database.UndeleteResult createUndeleteResult(Boolean isSuccess, Id recordId) {
        if (isSuccess) {
            return (Database.UndeleteResult) JSON.deserialize('{"success": true, "id": "' + recordId + '"}', Database.UndeleteResult.class);
        } else {
            return (Database.UndeleteResult) JSON.deserialize(
                '{"success":false,"errors":[{"message": "Could not undelete...", "statusCode": "FIELD_CUSTOM_VALIDATION_EXCEPTION"}]}',
                Database.UndeleteResult.class
            );
        }
    }

    /**
     * @description Creates a mock instance of `Database.UpsertResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests). A fake
     *              record ID is automatically included.
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @param  isCreated Indicates if the generated mock should have `isCreated` == true
     * @return   The mock instance of `Database.UpsertResult`
     */
    public static Database.UpsertResult createUpsertResult(Boolean isSuccess, Boolean isCreated) {
        return createUpsertResult(isSuccess, isCreated, createId(Schema.Account.SObjectType));
    }

    /**
     * @description Creates a mock instance of `Database.UpsertResult` - a mock is used instead of an actual instance
     *              to help speed up tests, and to support writing unit tests (instead of integration tests)
     * @param  isSuccess Indicates if the generated mock should have `isSuccess` == true
     * @param  isCreated Indicates if the generated mock should have `isCreated` == true
     * @param  recordId  The record ID to use within the mock result
     * @return   The mock instance of `Database.UpsertResult`
     */
    public static Database.UpsertResult createUpsertResult(Boolean isSuccess, Boolean isCreated, Id recordId) {
        if (isSuccess) {
            return (Database.UpsertResult) JSON.deserialize(
                '{"success": ' +
                isSuccess +
                ', "created": ' +
                isCreated +
                ', "id": "' +
                recordId +
                '"}',
                Database.UpsertResult.class
            );
        } else {
            return (Database.UpsertResult) JSON.deserialize(
                '{"success":false, "created":' +
                isCreated +
                ', "errors":[{"message": "Could not upsert...", "statusCode": "FIELD_CUSTOM_VALIDATION_EXCEPTION"}]}',
                Database.UpsertResult.class
            );
        }
    }

    /**
     * @description Generates a mock record ID for the provided SObject Type
     * @param  sobjectType The SObject Type for the generated mock record ID
     * @return   The mock record ID for the specified SObject Type
     */
    public static String createId(Schema.SObjectType sobjectType) {
        Integer recordIdNumber = 1;
        if (SOBJECT_TYPE_TO_MOCK_ID_COUNT.containsKey(sobjectType)) {
            recordIdNumber = SOBJECT_TYPE_TO_MOCK_ID_COUNT.get(sobjectType);
        }
        String recordIdSuffix = String.valueOf(recordIdNumber++);
        SOBJECT_TYPE_TO_MOCK_ID_COUNT.put(sobjectType, recordIdNumber);

        String recordIdKeyPrefix = sobjectType.getDescribe().getKeyPrefix();
        Integer idFieldLength = sobjectType.getDescribe().fields.getMap().get('Id').getDescribe().getLength();
        Integer recordIdCenterLength = idFieldLength - recordIdKeyPrefix.length() - recordIdSuffix.length();
        return recordIdKeyPrefix + '0'.repeat(recordIdCenterLength) + recordIdSuffix;
    }
}
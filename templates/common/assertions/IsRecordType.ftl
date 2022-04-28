 <#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
   /**
     * @description Verifies that the SObject is a given record type. If recordtype is null the SObject will assumed having the default recordtype.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or developerName is null
     * @throws IllegalArgumentException if `developerName` is a invalid recordtype for the SObject
     * @throws AssertException if SObject is not a given record type
     */
    global ${supportedAssert.type?keep_before('<')}Assert isRecordType(String developerName) {
        notNull(actual, 'actual');
        notNull(developerName, 'developerName');

        Schema.DescribeSObjectResult actualDescribe = actual.getSObjectType().getDescribe(SObjectDescribeOptions.DEFERRED);
        Map<String, Schema.RecordTypeInfo> recordTypeInfos = actualDescribe.getRecordTypeInfosByDeveloperName();
        if(!recordTypeInfos.containsKey(developerName)) {
          throw new IllegalArgumentException('RecordType not found on actual');
        }
        return isRecordType(recordTypeInfos.get(developerName).getRecordTypeId());
    }
   /**
     * @description Verifies that the SObject is a given record type. If recordtype is null the SObject will assumed having the default recordtype.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or recordTypeId is null
     * @throws IllegalArgumentException if `recordTypeId` is a invalid recordtype for the SObject
     * @throws AssertException if SObject is not a given record type
     */
    global ${supportedAssert.type?keep_before('<')}Assert isRecordType(Id recordTypeId) {
        notNull(actual, 'actual');
        notNull(recordTypeId, 'recordTypeId');

        Schema.DescribeSObjectResult actualDescribe = actual.getSObjectType().getDescribe(SObjectDescribeOptions.DEFERRED);
        Map<Id, Schema.RecordTypeInfo> recordTypeInfos = actualDescribe.getRecordTypeInfosById();
        if(!recordTypeInfos.containsKey(recordTypeId)) {
          throw new IllegalArgumentException('RecordType not found on actual');
        }
        Id actualRecordTypeId = actual.isSet('RecordTypeId') ? (Id) actual.get('RecordTypeId') : SObjectTypeUtil.getDefaultRecordTypeInfo(actualDescribe).getRecordTypeId();

        String expectedRecordTypeDevName = recordTypeInfos.get(recordTypeId).getDeveloperName();
        String actualRecordTypeDevName   = recordTypeInfos.get(actualRecordTypeId).getDeveloperName();

        assert(recordTypeId == actualRecordTypeId, 'Expected RecordType to be {0} ({1}) but found {2} ({3})', new List<Object> {expectedRecordTypeDevName, recordTypeId, actualRecordTypeDevName, actualRecordTypeId});

        return this;
    }
 <#--
  - Copyright (c) 2021, salesforce.com, inc.
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

        String actualRecordTypeDevName = actual.isSet('RecordTypeId') ? (String) actual.get('RecordTypeId') : SObjectTypeUtil.getDefaultRecordTypeInfo(Schema.SObjectType.Account).getDeveloperName();
        assert(developerName == actualRecordTypeDevName, 'Expected RecordType to be \'{0}\' but found \'{0}\'', new List<Object> {developerName, actualRecordTypeDevName});

        return this;
    }
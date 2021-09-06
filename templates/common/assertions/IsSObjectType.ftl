<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the Id is for a given SObjectType
     * @param sObjectType The expected value to assert against.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or sObjectType is null
     * @throws AssertException if actual is not the right SObjectType
     */
    global ${supportedAssert.type?keep_before('<')}Assert isSObjectType(Schema.SObjectType sObjectType) {
        notNull(actual, 'actual');
        notNull(sObjectType, 'sObjectType');
        assert(sObjectType == actual.getSobjectType(), 'Was expecting actual to be Id of type {0} but was {1}', new List<Object> {actual.getSobjectType().getDescribe().getName(), sObjectType.getDescribe().getName()});
        return this;
    }
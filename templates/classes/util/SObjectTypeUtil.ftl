<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="SObjectTypeUtil" path="/classes/util/"/>
/**
 * @description Utilities for `SObjectType`s.
 */
public class SObjectTypeUtil {
    public static Schema.RecordTypeInfo getDefaultRecordTypeInfo(DescribeSObjectResult soDescribe) {
        Schema.RecordTypeInfo defaultRT = null;
        for (Schema.RecordTypeInfo rt : soDescribe.getRecordTypeInfos()) {
            if(rt.isDefaultRecordTypeMapping()) {
                defaultRT = rt;
                break;
            }
        }
        
        return defaultRT;
    }
}

<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="SetContainsUtil" path="/classes/util/"/>
/**
 * @description Utilities for `Set`.contains.
 */
public class SetContainsUtil {
    public static Boolean contains(Iterator<Object> expected, Set<Object> actual) {
        while(expected.hasNext()) {
            Object e = expected.next();
            if(!actual.contains(e)) {
                return false;
            }
        }

        return true;
    }

    public static Boolean containsAnyOf(Iterator<Object> expected, Set<Object> actual) {
        while(expected.hasNext()) {
            Object e = expected.next();
            if(actual.contains(e)) {
                // This is contains any, so just return early
                return true;
            }
        }
        return false;
    }
}

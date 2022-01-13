<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="ExceptionUtil" path="/classes/util/"/>
/**
 * @description Utilities for `Exception`.
 */
public class ExceptionUtil {
    /**
     * @description Returns the recursive cause, aka. root cause, of an `Exception`.
     * @param e Exception to return root cause for.
     * @return Root cause of `e`.
     */
    public static Exception getRootCause(Exception e) {
        if (e != null && e.getCause() != null) {
            return getRootCause(e.getCause());
        }
        
        return e;
    }
}

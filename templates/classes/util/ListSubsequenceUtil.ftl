<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="${classPrefix}ListSubsequenceUtil" path="/classes/util/"/>
/**
 * @description Utilities for `List` subsequences.
 */
public class ${classPrefix}ListSubsequenceUtil {
    public static Boolean containsSubsequence(List<Object> actual, List<Object> expected) {
        Iterator<Object> actualIterator = actual.iterator();
        Integer subsequenceIndex = 0;
        while (actualIterator.hasNext() && subsequenceIndex < expected.size()) {
            Object actualNext = actualIterator.next();
            Object subsequenceNext = expected[subsequenceIndex];
            if (actualNext.equals(subsequenceNext)) {
                subsequenceIndex++;
            }
        }

        return subsequenceIndex >= expected.size();
    } 
}

<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="ListContainsUtil" path="/classes/util/"/>
/**
 * @description Utilities for `List`.contains.
 */
public class ListContainsUtil {
    public static Boolean containsOnlyOnce(List<Object> expected, List<Object> actual) {
        List<Object> notFound    = new List<Object>();
        List<Object> notOnlyOnce = new List<Object>();

        // Find dublicates from actual
        List<Object> duplicatesFromActual = new List<Object>();
        Set<Object> uniqueValues = new Set<Object>();
        for (Object a : actual) {
            if(uniqueValues.contains(a)) {
                duplicatesFromActual.add(a);
            }
            uniqueValues.add(a);
        }

        for (Object expectedOnlyOnce : expected) {
            if(!actual.contains(expectedOnlyOnce)) {
                notFound.add(expectedOnlyOnce);
            } else if (duplicatesFromActual.contains(expectedOnlyOnce)) {
                notOnlyOnce.add(expectedOnlyOnce);
            }
        }

        return notFound.isEmpty() && notOnlyOnce.isEmpty();
    }

    public static Boolean contains(Iterator<Object> expected, List<Object> actual) {
        while(expected.hasNext()) {
            Object e = expected.next();
            if(!actual.contains(e)) {
                return false;
            }
        }

        return true;
    }

    public static Boolean containsAnyOf(Iterator<Object> expected, List<Object> actual) {
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

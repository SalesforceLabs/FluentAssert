<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that `actual` contains only elements from `expected` and nothing else.
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws AssertException if actual is empty or contains non-null values
     */
    global ${com.classPrefix(supportedAssert.type)}Assert containsOnly(List<Object> expected) {
        notNull(actual,   'actual');
        notEmpty(expected, 'expected');

        // Narrow unexpected values in reversed order first
        List<Object> unexpectedValues = new List<Object>(actual);
        for (Integer i = (unexpectedValues.size()-1) ; i>= 0 ; i--) {
            if(expected.contains(unexpectedValues[i])){
                unexpectedValues.remove(i);
            }
        } 

        // Likewise narrow missing values, also reversed
        List<Object> missingValues = new List<Object>(expected);
        for (Integer i = (missingValues.size()-1) ; i>= 0 ; i--) {
            if(actual.contains(missingValues[i])){
                missingValues.remove(i);
            }
        }

        assert(unexpectedValues.isEmpty() && missingValues.isEmpty(), 'Was expecting actual to contain only {0}, but found {1} while not finding {2}', new List<Object>{expected, unexpectedValues, missingValues});
        return this;
    }
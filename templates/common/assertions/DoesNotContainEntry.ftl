<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual does not contains the given entry.
     * @param key key not to be contained in actual
     * @param vaulue not value to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or key is null
     * @throws AssertException if expected entry was found in map
     */
    global ${supportedAssert.type?keep_before('<')}Assert doesNotContainEntry(Object key, Object value) {
        notNull(actual, 'actual');
        notNull(key, 'key');

        if(actual.containsKey(key)) {
            Object actualValue = actual.get(key);
            if(actualValue.equals(value)) {
                throw new AssertException(String.format('Found an an unexpected value for key, {0}, found {2}', new List<Object>{key, value, actualValue}));
            }
        }
        return this;
    }
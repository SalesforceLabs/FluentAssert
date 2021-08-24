<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Verifies that the actual contains the given entry.
     * @param key key to be contained in actual
     * @param vaulue value to be contained in actual
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual or expected is null
     * @throws FluentAssert.AssertException if expected entry was not found in map
     */
    public ${classPrefix}${supportedAssert.type?keep_before('<')}Assert containsEntry(Object key, Object value) {
        notNull(actual, 'actual');
        notNull(key, 'key');

        if(actual.containsKey(key)) {
            Object actualValue = actual.get(key);
            if(!actualValue.equals(value)) {
                throw new FluentAssert.AssertException(String.format('Found an unexpected value for key, {0}. Found {1}, but expected {2}', new List<Object>{key, value, actualValue}));
            }
        } else {
            throw new FluentAssert.AssertException(String.format('Was expecting actual to contain the key {0}, but was unable to find it', new List<Object>{key}));
        }
        return this;
    }

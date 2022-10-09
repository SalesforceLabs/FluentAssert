 <#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
   /**
     * @description Verifies that the SObject has errors
     * @return this to allow further assert in a fluent manner
     * @throws NullPointerException if actual is null
     * @throws AssertException if SObject had no errors
     */
    global ${com.classPrefix(supportedAssert.type)}Assert hasErrors() {
        notNull(actual, 'actual');
        assert(actual.hasErrors(), 'Expecting actual to have errors', new List<String>());
        return this;
    }
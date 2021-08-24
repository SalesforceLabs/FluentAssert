<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "common/apex-class.ftl" as com>

<@pp.dropOutputFile />
<@com.apexClass className="${classPrefix}CollectionAssertBase" path="/classes/"/>
/**
 * @description Abstarct class with shared functionality for collections.
 */
public abstract inherited sharing class ${classPrefix}CollectionAssertBase extends ${classPrefix}AssertBase {
    protected void assertContains(Iterator<Object> expected) {
        while(expected.hasNext()) {
            Object e = expected.next();
            if(!actualContains(e)) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual list to contain {0}', new List<Object> {e}));
            }
        }
    }

    protected void assertDoesNotContain(Iterator<Object> expected) {
        while(expected.hasNext()) {
            Object e = expected.next();
            if(actualContains(e)) {
                throw new FluentAssert.AssertException(String.format('Was expecting actual list not to contain {0}', new List<Object> {e}));
            }
        }
    }

    protected void assertContainsAnyOf(Iterator<Object> expected) {
        while(expected.hasNext()) {
            Object e = expected.next();
            if(actualContains(e)) {
                // This is contains any, so just return early
                return;
            }
        }
        throw new FluentAssert.AssertException(String.format('Was expecting actual list at least one of {0}', new List<Object> {expected}));
    }

    protected abstract Boolean actualContains(Object expected);
}
<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="ExceptionRootCauseTest" path="/classes/exception/"/>
@IsTest
public class ExceptionRootCauseTest {
    @IsTest
    static void testPositiveScenarios() {
        Exception rootCause = new UnexpectedException();
        Exception cause     = new UnexpectedException(rootCause);
        Exception e         = new UnexpectedException(cause);
        Assert.that(e)
              .rootCause()
              .isSame(rootCause);
    }

    @IsTest
    static void testValidations() {
        try {
            Assert.that((Exception) null).rootCause();
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}
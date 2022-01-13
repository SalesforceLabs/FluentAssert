<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="ExceptionHasMessageTest" path="/classes/exception/"/>
@IsTest
public class ExceptionHasMessageTest {
    @IsTest
    static void testPositiveScenarios() {
        String expectedMessage = 'FluentAssert Test Message';
        Assert.that(new UnexpectedException(expectedMessage))
              .message()
                 .isEqualTo(expectedMessage)
              .back()
              .hasMessage(expectedMessage);
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            Assert.that(new UnexpectedException('FluentAssert Test Message')).hasMessage('Failure');
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    @IsTest
    static void testValidations() {
        try {
            Assert.that((Exception) null).hasMessage('Empty on purpose');
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
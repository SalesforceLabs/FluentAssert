<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="StringHasLineCountTest" path="/classes/string/"/>
@IsTest
public class StringHasLineCountTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that('')
              .hasLineCount(0)
              .lineCount()
                 .isEqualTo(0);

        Assert.that('ABC')
              .hasLineCount(1)
              .lineCount()
                 .isEqualTo(1);

        Assert.that('ABC\nABC')
              .hasLineCount(2)
              .lineCount()
                 .isEqualTo(2);
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            Assert.that('ABC').hasLineCount(4);
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
            Assert.that((String) null).hasLineCount(3);
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
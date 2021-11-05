<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="MapContainsTest" path="/classes/map/"/>
@IsTest
public class MapContainsTest {
    private static final Map<Object, Object> EMPTY = new Map<Object, Object>();
    private static final Map<Object, Object> ABC = new Map<Object, Object>{
        'A' => 'a',
        'B' => 'b',
        'C' => 'c'
    };

    @IsTest
    static void testPositiveScenarios() {
        Assert.that(ABC)
                    .containsEntry('A', 'a')
                    .values()
                        .contains(new List<Object>{'b'})
                    .back()
                    .keys()
                        .contains(new List<Object>{'B'});
    }

    @IsTest
    static void testNegativeScenarios() {
        failureScenario(EMPTY, 'A', 'a');
        failureScenario(ABC,   'A', 'b');
        failureScenario(ABC,   'B', 'a');
    }

    private static void failureScenario(Map<Object, Object> actual, Object expectedKey, Object expectedValue) {
        try {
            Assert.that(actual).containsEntry(expectedKey, expectedValue);
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
        validationScenario((Map<Object, Object>) null, 'A', 'a');
        validationScenario(ABC, null, 'a');
    }

        private static void validationScenario(Map<Object, Object> actual, Object expectedKey, Object expectedValue) {
        try {
            Assert.that(actual).containsEntry(expectedKey, expectedValue);
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
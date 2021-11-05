<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="MapDoesNotContainEntryTest" path="/classes/map/"/>
@IsTest
public class MapDoesNotContainEntryTest {
    private static final Map<Object, Object> EMPTY = new Map<Object, Object>();
    private static final Map<Object, Object> ABC = new Map<Object, Object>{
        'A' => 'a',
        'B' => 'b',
        'C' => 'c'
    };

    @IsTest
    static void testPositiveScenarios() {
        Assert.that(EMPTY).doesNotContainEntry('A', 'a');
        
        Assert.that(ABC).doesNotContainEntry('A', 'b')
                              .doesNotContainEntry('B', 'a');
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            Assert.that(ABC).doesNotContainEntry('A', 'a');
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
            Assert.that(actual).doesNotContainEntry(expectedKey, expectedValue);
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
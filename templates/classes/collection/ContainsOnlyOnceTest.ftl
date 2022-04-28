<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberDataTypes = [
    {"nativeDataType":"List", "castingValue": "List<Object>"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${numberDataType.nativeDataType}ContainsOnlyOnceTest" path="/classes/${numberDataType.nativeDataType?lower_case}/"/>
@IsTest
public class ${numberDataType.nativeDataType}ContainsOnlyOnceTest {
    private static final ${numberDataType.castingValue} EMPTY = new ${numberDataType.castingValue}();
    private static final ${numberDataType.castingValue} ABC = new ${numberDataType.castingValue} {
        'A', 'B', 'C'
    };

    @IsTest
    static void testPositiveScenarios() {
        Assert.that(ABC)
                    .containsOnlyOnce(new List<String>{'A', 'B'})
                    .containsOnlyOnce(new List<String>{'C', 'B'});
    }

    @IsTest
    static void testNegativeScenarios() {
        failureScenario(ABC, new List<String>{'D'});
        failureScenario(new ${numberDataType.castingValue}{'C', 'C'}, new List<String>{'C'});
    }

    private static void failureScenario(${numberDataType.castingValue} actual, List<String> expected) {
        try {
            Assert.that(actual).containsOnlyOnce(expected);
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
        validationScenario(null, new List<Object>{'A'});
        validationScenario(ABC, (List<Object>) null);

        // Empty inputs throws IllegalArgumentException
        try {
            Assert.that(ABC).containsOnlyOnce(new List<Object>());
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void validationScenario(${numberDataType.castingValue} actual, List<Object> expected) {
        try {
            Assert.that(actual).containsOnlyOnce(expected);
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
</#list>
<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign numberDataTypes = [
    {"nativeDataType":"List", "castingValue": "List<Object>"},
    {"nativeDataType":"Set",  "castingValue": "Set<Object>"}
]>
<@pp.dropOutputFile />
<#list numberDataTypes as numberDataType>
  <@com.apexClass className="${numberDataType.nativeDataType}ContainsExactlyInAnyOrderTest" path="/classes/${numberDataType.nativeDataType?lower_case}/"/>
@IsTest
public class ${numberDataType.nativeDataType}ContainsExactlyInAnyOrderTest {
    private static final ${numberDataType.castingValue} EMPTY = new ${numberDataType.castingValue}();
    private static final ${numberDataType.castingValue} PART_OF_ALPHABET = new ${numberDataType.castingValue}{
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'
    };

    @IsTest
    static void testPositiveScenarios() {
        Assert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(PART_OF_ALPHABET);
        Assert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new List<Object>{'J', 'I', 'H', 'G', 'F', 'E', 'D', 'C', 'B', 'A'});
        Assert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new Set<Object>{'J', 'I', 'H', 'G', 'F', 'E', 'D', 'C', 'B', 'A'});
    }

    @IsTest
    static void testNegativeScenarios() {
        try {
            Assert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new List<Object>{'K', 'L'});
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            Assert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new Set<Object>{'K', 'L'});
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
        validationScenario((${numberDataType.castingValue}) null, PART_OF_ALPHABET);
        validationScenario(PART_OF_ALPHABET, null);

        // Empty inputs throws IllegalArgumentException
        try {
            Assert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new List<Object>());
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }

        try {
            Assert.that(PART_OF_ALPHABET).containsExactlyInAnyOrder(new Set<Object>());
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void validationScenario(${numberDataType.castingValue} actual, ${numberDataType.castingValue} expected) {
        try {
            Assert.that(actual).containsExactlyInAnyOrder(expected);
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
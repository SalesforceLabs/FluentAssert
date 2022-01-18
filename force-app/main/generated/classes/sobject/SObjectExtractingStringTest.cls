/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class SObjectExtractingStringTest {
    @IsTest
    static void testPassingScenarios() {
        // Given
        Account a = new Account(
            Name          = 'X',
            AccountNumber = 'Y'
        );
        List<Object> expectedValues = new List<Object>{
            a.Name,
            a.AccountNumber,
            null
        };

        // When / Then
        Assert.that((SObject) a)
              .extracting('Name , AccountNumber,AccountSource')
                .containsExactly(expectedValues)
                .andThen()
              .isSame(a);
    }

    @IsTest
    static void testValidations() {
        Account a = new Account(Name = 'X');
        
        validationScenarioNPE(null, 'Name , AccountNumber,AccountSource');
        validationScenarioNPE(a, null);

        validationScenarioIAE(a, '');
        validationScenarioIAE(a, ',');
        validationScenarioIAE(a, ' ');
        validationScenarioIAE(a, 'Name,,AccountNumber');
        validationScenarioIAE(a, 'Name,NonExistingField');
    }

    private static void validationScenarioNPE(SObject actual, String fields) {
        try {
            Assert.that(actual).extracting(fields);
            System.assert(false, 'No assert exception thrown');
        } catch(NullPointerException npe) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, npe);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }

    private static void validationScenarioIAE(SObject actual, String fields) {
        try {
            Assert.that(actual).extracting(fields);
            System.assert(false, 'No assert exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}

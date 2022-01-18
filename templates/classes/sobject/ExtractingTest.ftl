<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign dataTypes = [
    {
        "type":       "String",
        "assertType": "String",
        "passing":    ["'Name , AccountNumber,AccountSource'"],
        "iaeScenarios": [
            "''",
            "','",
            "' '",
            "'Name,,AccountNumber'",
            "'Name,NonExistingField'"
        ]
    },{
        "type":       "SObjectField",
        "assertType": "List<Schema.SObjectField>",
        "passing":    ["new List<Schema.SObjectField>{Schema.Account.Name,Schema.Account.AccountNumber,Schema.Account.AccountSource}"],
        "iaeScenarios": [
            'new List<Schema.SObjectField>()',
            'new List<Schema.SObjectField>{Schema.Account.Name,null,Schema.Account.AccountNumber}'
        ]
    }
]>
<@pp.dropOutputFile />
<#list dataTypes as dt>
<@com.apexClass className="SObjectExtracting${dt.type}Test" path="/classes/sobject/"/>
@IsTest
public class SObjectExtracting${dt.type}Test {
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
<#list dt.passing as p>
        Assert.that((SObject) a)
              .extracting(${p})
                .containsExactly(expectedValues)
                .andThen()
              .isSame(a);
</#list>
    }

    @IsTest
    static void testValidations() {
        Account a = new Account(Name = 'X');
        
<#list dt.passing as p>
        validationScenarioNPE(null, ${p});
</#list>
        validationScenarioNPE(a, null);

<#list dt.iaeScenarios as iaep>
        validationScenarioIAE(a, ${iaep});
</#list>
    }

    private static void validationScenarioNPE(SObject actual, ${dt.assertType} fields) {
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

    private static void validationScenarioIAE(SObject actual, ${dt.assertType} fields) {
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
</#list>
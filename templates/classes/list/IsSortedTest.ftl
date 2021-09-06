<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="ListIsSortedTest" path="/classes/list/"/>
@IsTest
public class ListIsSortedTest {
    @IsTest
    static void testPositiveScenarios() {
        Assert.that(new List<Object>{'A', 'B', 'C', 'D', 'E'}).isSorted();

        Assert.that(new List<Decimal>{1, 2, 3, 4, 5}).isSorted();
        Assert.that(new List<Double>{1, 2, 3, 4, 5}).isSorted();

        Assert.that(new List<Integer>{1, 2, 3, 4, 5}).isSorted();
        Assert.that(new List<Long>{1, 2, 3, 4, 5}).isSorted();
    }

    @IsTest
    static void testFailureScenarios() {
        testFailureScenario(new List<Object>{'E', 'D', 'C', 'B', 'A'});

        testFailureScenario(new List<Decimal>{5, 4, 3, 2, 1});
        testFailureScenario(new List<Double>{5, 4, 3, 2, 1});

        testFailureScenario(new List<Integer>{5, 4, 3, 2, 1});
        testFailureScenario(new List<Long>{5, 4, 3, 2, 1});
    }

    @SuppressWarnings('PMD.ApexUnitTestMethodShouldHaveIsTestAnnotation')
    private static void testFailureScenario(List<Object> actual) {
        try {
            Assert.that(actual).isSorted();
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
            Assert.that((List<Object>) null).isSorted();
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

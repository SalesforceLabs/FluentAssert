<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../../common/apex-class.ftl" as com>

<@pp.dropOutputFile />
<@com.apexClass className="${classPrefix}ListIsSortedTest" path="/classes/list/"/>
@IsTest
@SuppressWarnings('PMD.ApexUnitTestClassShouldHaveAsserts')
public class ${classPrefix}ListIsSortedTest {
    @IsTest
    static void testPositiveScenarios() {
        FluentAssert.that(new List<Object>{'A', 'B', 'C', 'D', 'E'}).isSorted();

        FluentAssert.that(new List<Decimal>{1, 2, 3, 4, 5}).isSorted();
        FluentAssert.that(new List<Double>{1, 2, 3, 4, 5}).isSorted();

        FluentAssert.that(new List<Integer>{1, 2, 3, 4, 5}).isSorted();
        FluentAssert.that(new List<Long>{1, 2, 3, 4, 5}).isSorted();
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
            FluentAssert.that(actual).isSorted();
            System.assert(false, 'No assert exception thrown');
        } catch(FluentAssert.AssertException ae) {
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
            FluentAssert.that((List<Object>) null).isSorted();
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

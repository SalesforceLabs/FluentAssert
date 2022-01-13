/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class ExceptionIsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Exception actual = new UnexpectedException('X');
        Assert.that((Exception) actual).isNotEqualTo(new UnexpectedException('Y'));
    }

    @IsTest
    static void testFailureScenarios() {
        Exception actual = new UnexpectedException('X');
        failureScenario(actual, actual);
    }

    private static void failureScenario(Exception actual, Exception expected) {
        try {
            Assert.that((Exception) actual).isNotEqualTo(expected);
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
        validationScenario(null, new UnexpectedException('X'));
        validationScenario(new UnexpectedException('X'), null);
    }

    private static void validationScenario(Exception actual, Exception expected) {
        try {
            Assert.that(actual).isNotEqualTo(expected);
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

/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class BlobIsNotEqualToTest {
    @IsTest
    static void testPassingScenarios() {
        Blob actual = Blob.valueOf('X');
        Assert.that((Blob) actual).isNotEqualTo(Blob.valueOf('Y'));
    }

    @IsTest
    static void testFailureScenarios() {
        Blob actual = Blob.valueOf('X');
        failureScenario(actual, actual);
    }

    private static void failureScenario(Blob actual, Blob expected) {
        try {
            Assert.that((Blob) actual).isNotEqualTo(expected);
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
        validationScenario(null, Blob.valueOf('X'));
        validationScenario(Blob.valueOf('X'), null);
    }

    private static void validationScenario(Blob actual, Blob expected) {
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

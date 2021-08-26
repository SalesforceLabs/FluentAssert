/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FAMapIsNotNullTest {
    @IsTest
    static void testPassingScenarios() {
        FluentAssert.that((Map<Object, Object>) new Map<Object, Object>()).isNotNull();
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            FluentAssert.that((Map<Object, Object>) null).isNotNull();
            System.assert(false, 'No assert exception thrown');
        } catch(FluentAssert.AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName());
        }
    }
}

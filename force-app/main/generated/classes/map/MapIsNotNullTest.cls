/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class MapIsNotNullTest {
    @IsTest
    static void testPassingScenarios() {
        Assert.that((Map<Object, Object>) new Map<Object, Object>()).isNotNull();
    }

    @IsTest
    static void testFailureScenarios() {
        try {
            Assert.that((Map<Object, Object>) null).isNotNull();
            System.assert(false, 'No assert exception thrown');
        } catch(AssertException ae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, ae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName());
        }
    }
}

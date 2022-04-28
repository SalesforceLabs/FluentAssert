/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class BooleanUtilTest {
    @IsTest
    static void testValueOf() {
        Assert.that(BooleanUtil.valueOf('true')).isTrue();
        Assert.that(BooleanUtil.valueOf('TRUE')).isTrue();
        Assert.that(BooleanUtil.valueOf('trUE')).isTrue();

        Assert.that(BooleanUtil.valueOf('false')).isFalse();
        Assert.that(BooleanUtil.valueOf('FALSE')).isFalse();
        Assert.that(BooleanUtil.valueOf('falSE')).isFalse();

        validationScenario(null);
        validationScenario('');
        validationScenario(' ');
        validationScenario('not false');
        validationScenario('not true');
    }

    static void validationScenario(String actual) {
        try {
            BooleanUtil.valueOf(actual);
            System.assert(false, 'No exception thrown');
        } catch(IllegalArgumentException iae) {
            // Success! Correct exception being thrown
            System.debug(LoggingLevel.INTERNAL, iae);
        } catch(Exception e) {
            System.assert(false, 'Wrong exception thrown, got: ' + e.getTypeName() + ', message: \\n' + e.getMessage());
            System.debug(LoggingLevel.ERROR, e);
        }
    }
}
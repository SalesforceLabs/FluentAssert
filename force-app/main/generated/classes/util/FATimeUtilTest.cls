/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
@IsTest
public class FATimeUtilTest {
    @IsTest
    static void testToMillisecondsOfDay() {
        System.assertEquals((5 * 60 * 60 * 1000) + (10 * 60 * 1000) + (15 * 1000) + 20,FATimeUtil.toMillisecondsOfDay(Time.newInstance(5, 10, 15, 20)));
    }
}
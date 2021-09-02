<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<@pp.dropOutputFile />
<@com.apexClass className="${classPrefix}TimeUtilTest" path="/classes/util/"/>
@IsTest
public class ${classPrefix}TimeUtilTest {
    @IsTest
    static void testToMillisecondsOfDay() {
        FluentAssert.that(${classPrefix}TimeUtil.toMillisecondsOfDay(Time.newInstance(5, 10, 15, 20)))
                    .isEqualTo((5 * 60 * 60 * 1000) + (10 * 60 * 1000) + (15 * 1000) + 20);
    }
}
<#--
  - Copyright (c) 2021, salesforce.com, inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#import "../../common/apex-class.ftl" as com>

<@pp.dropOutputFile />
<@com.apexClass className="${classPrefix}TimeUtil" path="/classes/util/"/>
/**
 * @description Utilities for `Time`.
 */
public class ${classPrefix}TimeUtil {
    /**
     * @description Converts a `Time` to milliseconds since midnight.
     * @param timeOfDay Time to convert to milliseconds of day.
     * @return Milliseconds since midnight.
     */
    public static Long toMillisecondsOfDay(Time timeOfDay) {
        return (timeOfDay.hour() * 60 * 60 * 1000) + 
               (timeOfDay.minute() * 60 * 1000) + 
               (timeOfDay.second() * 1000) + 
               timeOfDay.millisecond();
    }
}

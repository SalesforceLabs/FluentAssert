<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
    /**
     * @description Extracts fields from actual as a ListAssert
     * @param fields Fields to extract seperated by comma
     * @return ListAssert-navigator for fluent asserts
     * @throws NullPointerException if actual or fields is null
     * @throws IllegalArgumentException if fields is empty or has invalid fields
     */
    global ListAssert${supportedAssert.type}Navigator extracting(String fields) {
      return extracting(SObjectFieldUtil.toList(actual.getSobjectType(), fields));
    }

    /**
     * @description Extracts fields from actual as a ListAssert
     * @param fields Fields to extract seperated by comma
     * @return ListAssert-navigator for fluent asserts
     * @throws NullPointerException if actual or fields is null
     * @throws IllegalArgumentException if fields is empty or has invalid fields
     */
    global ListAssert${supportedAssert.type}Navigator extracting(List<Schema.SObjectField> fields) {
      List<Object> values = new List<Object>();

      if(fields.isEmpty()) {
        throw new IllegalArgumentException('List of fields is empty');
      }

      for (Schema.SObjectField f : fields) {
        if(f == null) {
          throw new IllegalArgumentException('Field names can\'t be null');
        }
        values.add(actual.get(f));
      }

      return new ListAssertSObjectNavigator(values, this);
    }

    
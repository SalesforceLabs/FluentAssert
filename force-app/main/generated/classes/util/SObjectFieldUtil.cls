/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Utilities for `SObjectField`s.
 */
public class SObjectFieldUtil {
    public static List<Schema.SObjectField> toList(Schema.SObjectType objectType, String fieldsList) {
        notNull(fieldsList);

        Map<String, Schema.SObjectField> fieldMap = objectType.getDescribe().fields.getMap();
        List<Schema.SObjectField> result = new List<Schema.SObjectField>();
        for (String field : fieldsList.split(',')) {
            String fieldKey = field.trim();
            if(String.isEmpty(field)) {
                throw new IllegalArgumentException('Illegal field: ' + field);
            }

            if(fieldMap.containsKey(fieldKey)) {
                result.add(fieldMap.get(fieldKey));
            } else { 
                throw new IllegalArgumentException('Illegal field: ' + field);
            }
        }

        if(result.isEmpty()) {
            throw new IllegalArgumentException('Illegal list of fields: ' + fieldsList);
        }

        return result;
    }

    private static void notNull(String fieldsList) {
        if(fieldsList == null) {
            NullPointerException npe = new NullPointerException();
            npe.setMessage('Fields cannot be null');
            throw npe;
        }
    }
}

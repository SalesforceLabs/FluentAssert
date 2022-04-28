/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Utilities for `Boolean`.
 */
public class BooleanUtil {
    /**
     * @description Converts a `String` to `Boolean` case insentively.
     * Unlike `Boolean.valueOf()` this throws `IllegalArgumentException` if anything else than `'true'` and `'false'` input.
     * @param v `String` to convert to `Boolean`
     * @throws IllegalArgumentException if anything else than `'true'` and `'false'` input.
     * @return Milliseconds since midnight.
     */
    public static Boolean valueOf(String v) {
        if(v != null && (v.equalsIgnoreCase('true') || v.equalsIgnoreCase('false'))) {
            return Boolean.valueOf(v);
        } else {
            throw new IllegalArgumentException('Input must be either true or false.');
        }
    }
}
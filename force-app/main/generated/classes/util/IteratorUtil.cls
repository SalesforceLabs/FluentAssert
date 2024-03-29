/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Utilities for `Iterator`s.
 */
public class IteratorUtil {
    public static Boolean containsOnlyNulls(Iterator<Object> iter) {
        while(iter.hasNext()) {
            if(iter.next() != null) {
                return false;
            }
        }
        return true;
    }
}

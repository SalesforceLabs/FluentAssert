/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Utilities for `Exception`.
 */
public class ExceptionUtil {
    /**
     * @description Returns the recursive cause, aka. root cause, of an `Exception`.
     * @param e Exception to return root cause for.
     * @return Root cause of `e`.
     */
    public static Exception getRootCause(Exception e) {
        if (e != null && e.getCause() != null) {
            return getRootCause(e.getCause());
        }
        
        return e;
    }
}

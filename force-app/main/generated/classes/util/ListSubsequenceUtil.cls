/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Utilities for `List` subsequences.
 */
public class ListSubsequenceUtil {
    public static Boolean containsSubsequence(List<Object> expected, List<Object> actual) {
        Iterator<Object> actualIterator = actual.iterator();
        Integer subsequenceIndex = 0;
        while (actualIterator.hasNext() && subsequenceIndex < expected.size()) {
            Object actualNext = actualIterator.next();
            Object subsequenceNext = expected[subsequenceIndex];
            if (actualNext.equals(subsequenceNext)) {
                subsequenceIndex++;
            }
        }

        return subsequenceIndex >= expected.size();
    } 
}

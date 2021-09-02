/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Utilities for `List` sequences.
 */
public class FAListSequenceUtil {
    public static Boolean containsSequence(List<Object> actual, List<Object> expected) {
        for (Integer i = 0; i < actual.size(); i++) {
            if(containsSequenceAtIndex(actual, expected, i)) {
                return true;
            }
        }

        return false;
    } 

    private static Boolean containsSequenceAtIndex(List<Object> actual, List<Object> expected, Integer startingIndex) {
        if(actual.size() - startingIndex < expected.size()) {
            return false;
        }

        for (Integer i = 0; i < expected.size(); i++) {
            if(!actual[startingIndex + i].equals(expected[i])) {
                return false;
            }
        }
        return true;
    } 
}

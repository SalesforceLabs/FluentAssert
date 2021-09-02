/*
 * Copyright (c) 2020, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
/**
 * @description Abstract class with shared functionality.
 */
public virtual inherited sharing class FAAssertBase {
    protected void notNull(Object value, String name) {
        if(value == null) {
            NullPointerException npe = new NullPointerException();
            npe.setMessage(name + ' must not be null');
            throw npe;
        }
    }

    protected void notEmpty(List<Object> value, String name) {
        notNull(value, name);
        if(value.isEmpty()) {
            IllegalArgumentException iae = new IllegalArgumentException();
            iae.setMessage(name + ' must not be empty.');
            throw iae;
        }
    }

    protected void notEmpty(Set<Object> value, String name) {
        notNull(value, name);
        if(value.isEmpty()) {
            IllegalArgumentException iae = new IllegalArgumentException();
            iae.setMessage(name + ' must not be empty.');
            throw iae;
        }
    }

    protected void assert(Boolean condition, String messageToFormat, List<Object> formattingArguments) {
        if(!condition) {
            throw new FluentAssert.AssertException(String.format(messageToFormat, formattingArguments));
        }
    }
}

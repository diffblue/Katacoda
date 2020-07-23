/*
 * Waltz - Enterprise Architecture
 * Copyright (C) 2016, 2017, 2018, 2019 Waltz open source project
 * See README.md for more information
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific
 *
 */

package com.khartec.waltz.common;

import org.junit.Test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class StringUtilities_notEmpty {

    @Test
    public void falseIfOnlyWhitespace() {
        assertFalse(StringUtilities.notEmpty("   \t"));
    }

    @Test
    public void falseIfEmptyString() {
        assertFalse(StringUtilities.notEmpty(""));
    }

    @Test
    public void falseIfNull() {
        assertFalse(StringUtilities.notEmpty(null));
    }

    @Test
    public void falseIfNotEmpty() {
        assertTrue(StringUtilities.notEmpty("  hello  "));
    }
}

<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#assign stringDelegates = [
    {"method":"isAllLowerCase",       "staticOnString": false, "assertDescription": "all characters are lowercase"},
    {"method":"isAllUpperCase",       "staticOnString": false, "assertDescription": "all characters are uppercase"},
    {"method":"isAlpha",              "staticOnString": false, "assertDescription": "all characters are Unicode letters only"},
    {"method":"isAlphaSpace",         "staticOnString": false, "assertDescription": "all characters are Unicode letters or spaces only"},
    {"method":"isAlphanumeric",       "staticOnString": false, "assertDescription": "all characters are Unicode letters or numbers only"},
    {"method":"isAlphanumericSpace",  "staticOnString": false, "assertDescription": "all characters are Unicode letters, numbers, or spaces only"},
    {"method":"isAsciiPrintable",     "staticOnString": false, "assertDescription": "contains only ASCII printable characters"},
    {"method":"isNumeric",            "staticOnString": false, "assertDescription": "contains only Unicode digits"},
    {"method":"isNumericSpace",       "staticOnString": false, "assertDescription": "only Unicode digits or spaces"},
    {"method":"isWhitespace",         "staticOnString": false, "assertDescription": "contains only white space characters or is empty"},
    {"method":"isBlank",              "staticOnString": true,  "assertDescription": "the specified String is white space, empty (''), or null"},
    {"method":"isEmpty",              "staticOnString": true,  "assertDescription": "the specified String is empty ('') or null"},
    {"method":"isNotBlank",           "staticOnString": true,  "assertDescription": "the specified String is not whitespace, not empty (''), and not null"},
    {"method":"isNotEmpty",           "staticOnString": true,  "assertDescription": "the specified String is not empty ('') and not null"},

    {"method":"containsWhitespace",   "staticOnString": false, "assertDescription": "contains any white space characters"},
    {"method":"contains",             "staticOnString": false, "interface": [{"type": "String", "name": "substring",   "description": "specified sequence of characters"}], "assertDescription": "contains the specified sequence of characters in substring"},
    {"method":"containsAny",          "staticOnString": false, "interface": [{"type": "String", "name": "expected",    "description": "expected list fo characters"}],      "assertDescription": "contains any of the characters in expected"},
    {"method":"containsIgnoreCase",   "staticOnString": false, "interface": [{"type": "String", "name": "substring",   "description": "specified sequence of characters"}], "assertDescription": "contains the specified sequence of characters without regard to case"},
    {"method":"containsNone",         "staticOnString": false, "interface": [{"type": "String", "name": "notExpected", "description": "negative list of characters"}],      "assertDescription": "doesn’t contain any of the characters in notExpected"},
    {"method":"containsOnly",         "staticOnString": false, "interface": [{"type": "String", "name": "expected",    "description": "specified sequence of characters"}], "assertDescription": "contains characters only from the specified sequence of characters and not any other characters"},
    {"method":"endsWith",             "staticOnString": false, "interface": [{"type": "String", "name": "suffix",      "description": "suffix to assert against"}],         "assertDescription": "ends with the specified suffix"},
    {"method":"endsWithIgnoreCase",   "staticOnString": false, "interface": [{"type": "String", "name": "suffix",      "description": "suffix to assert against"}],         "assertDescription": "ends with the specified suffix, case ignored"},
    {"method":"equalsIgnoreCase",     "staticOnString": false, "interface": [{"type": "String", "name": "expected",    "description": "expected sequence"}],                "assertDescription": "is not null and represents the same sequence of characters as actual"},
    {"method":"startsWith",           "staticOnString": false, "interface": [{"type": "String", "name": "prefix",      "description": "prefix to assert against"}],         "assertDescription": "begins with the specified prefix"}
    {"method":"startsWithIgnoreCase", "staticOnString": false, "interface": [{"type": "String", "name": "prefix",      "description": "prefix to assert against"}],         "assertDescription": "begins with the specified prefix, case ignored"}
]>
<#list stringDelegates?sort_by("method") as stringDelegate>
    /**
     * @description Asserts that ${stringDelegate.assertDescription}. Simply delegates to `String.${stringDelegate.method}()` and was mostly added here to support a fluent programming style.
<#if (stringDelegate.interface??)><#list stringDelegate.interface as sdi>
     * @param ${sdi.name} ${sdi.description}
</#list></#if>
     * @return this to allow further assert in a fluent manner
     * @throws AssertException if not ${stringDelegate.assertDescription}.
     * @see String.${stringDelegate.method}
     */
    global ${supportedAssert.type?keep_before('<')}Assert ${stringDelegate.method}(<#if (stringDelegate.interface??)><#list stringDelegate.interface as sdi>${sdi.type} ${sdi.name}<#sep>, </#list></#if>) {
        assert(<#if (stringDelegate.staticOnString)>String<#else>actual</#if>.${stringDelegate.method}(<#if (stringDelegate.staticOnString)>actual</#if><#if (stringDelegate.interface??)><#list stringDelegate.interface as sdi>${sdi.name}<#sep>, </#list></#if>), 'Expecting ${stringDelegate.assertDescription?replace("'", "\\'")}, but found {0}', new List<Object> {actual});
        return this;
    }
<#sep>
    
</#list>
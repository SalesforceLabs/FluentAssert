<#--
  - Copyright (c) 2021, Salesforce Inc.
  - All rights reserved.
  - SPDX-License-Identifier: BSD-3-Clause
  - For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
-->
<#macro apexClass className path>
<@pp.changeOutputFile name=path+"/"+className+".cls-meta.xml" />
<?xml version="1.0" encoding="UTF-8"?>
<ApexClass xmlns="http://soap.sforce.com/2006/04/metadata">
    <apiVersion>${apiVersion}</apiVersion>
    <status>Active</status>
</ApexClass>
<@pp.changeOutputFile name=path+"/"+className+".cls" />
/*
 * Copyright (c) 2020, Salesforce Inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
</#macro>
<#function classPrefix type>
  <#assign s = type?keep_before('<')>
  <#if type?contains('.')>
    <#assign s += type?keep_before('>')?keep_after('.')>
  </#if>
  <#return s>
</#function>
<#function navigatorClass from to>
  <#assign s = from?keep_before("<")>
  <#assign s += 'Assert'>
  <#assign s += to?keep_before("<")>
  <#if to?contains('Database.')>
    <#assign s += 'DB' + to?keep_before('>')?keep_after('.')?keep_before('Result')>
  </#if>
  <#assign s += 'Navigator'>
  <#return s>
</#function>
<#function classFilePath type>
  <#if type?contains('Database.')>
    <#return '/classes/db/'>
  </#if>
  <#return '/classes/' + type?keep_before('<')?lower_case + '/'>
</#function>
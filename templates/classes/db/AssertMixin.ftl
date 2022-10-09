<#macro filteredResultProperty type name condition>
    private ${type} ${name} {
        get {
            if(this.${name} == null) {
                ${name} = new ${type}();
                for (${type?keep_after('<')?keep_before('>')} result : actual) {
                    if (result.isSuccess() == ${condition}) {
                        ${name}.add(result);
                    }
                }
            }
            return ${name};
        }
        
        private set;
    }
</#macro>
<@filteredResultProperty type=supportedAssert.type name="failureResults" condition="false"/>
<@filteredResultProperty type=supportedAssert.type name="successResults" condition="true"/>
<#macro filteredIdProperty type name condition>
    private List<Id> ${name} {
        get {
            if(this.${name} == null) {
                ${name} = new List<Id>();
                for (${type?keep_after('<')?keep_before('>')} result : actual) {
                    if (result.isSuccess() == ${condition}) {
                        ${name}.add(result.getId());
                    }
                }
            }
            return ${name};
        }
        
        private set;
    }
</#macro>
<@filteredIdProperty type=supportedAssert.type name="failureIds" condition="false"/>
<@filteredIdProperty type=supportedAssert.type name="successIds" condition="true"/>
<#if sch_name??>
    ${sch_name}
    ${sch_description}
    ${sch_needs_list}
    ${sch_information_list}
    <#list myDemand_list as my_Demand>
        ${my_Demand.demand_title}
    </#list>
    <#list myScience_Info as my_Science>
        ${my_Science.title}
    </#list>
</#if>

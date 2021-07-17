<#macro generateSummary post>
    <#if post.summary?length gt 20>
        ${post.summary?substring(0,20)}...
    <#else>
        ${post.summary!}
    </#if>
</#macro>
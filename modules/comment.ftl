<#macro comment target,type>
    <#if !target.disallowComment!false>
        <script src="//cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.min.js"></script>
        <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/halo-dev/halo-comment@latest/dist/halo-comment.min.js'}"></script>
        <halo-comment id="${target.id?c}" type="${type}"/>
    </#if>
</#macro>
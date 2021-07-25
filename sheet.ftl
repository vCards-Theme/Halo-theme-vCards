<#include "modules/layout.ftl">
<#include "modules/comment.ftl">
<@layout title="${blog_title!}">
    <div class="box box-content">
        <article class="post" itemscope itemtype="http://schema.org/BlogPosting">
            <div class="pb-2">
                <h1 class="title title--h1 first-title title__separate" itemprop="name headline">
                    [${sheet.title!}]
                </h1>
            </div>
            <div class="caption-post" itemprop="articleBody">
                ${sheet.formatContent!}
            </div>
        </article>
        <@comment target=sheet type="sheet" />
    </div>
</@layout>
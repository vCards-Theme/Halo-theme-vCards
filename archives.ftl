<#include "modules/layout.ftl">
<@layout title="${blog_title!}">
    <div class="box box-content">
        <div class="pb-2">
            <h1 class="title title--h1 first-title title__separate">[归档页]</h1>
        </div>
        <div id="archives" class="col-12 archive-con">
            <#list archives as archive>
                <h2 class="title title--h2">[${archive.year?c}年]</h2>
                <div class="timeline">
                    <#list archive.posts as post>
                        <article class="timeline__item">
                            <a href="${post.fullPath!}">
                                <h5 class="title title--h5 timeline__title">${post.title!}</h5>
                            </a>
                            <span class="timeline__period">${post.createTime?string('MM-dd')}]</span>
                        </article>
                    </#list>
                </div>
            </#list>
        </div>
    </div>
</@layout>
<#include "modules/layout.ftl">
<#import "./functions.ftl" as functions />
<@layout title="${blog_title!}">
    <div class="box box-content">
        <div class="pb-2">
            <h1 class="title title--h1 first-title title__separate">[首页]</h1>
        </div>
        <div class="news-grid" id="content">
            <#list posts.content as post>
                <article class="news-item box ">
                    <div class="news-item__image-wrap overlay overlay--45">
                        <div class="news-item__sort">
                            <span style="color:#fff;">
                                <#if post.categories?? && post.categories?size gt 0>
                                    <a href="${post.categories[0].fullPath!}">${post.categories[0].name!}</a>
                                </#if>
                            </span>
                        </div>
                        <div class="news-item__date">
                            <span>
                                ${post.createTime?string('yyyy-MM-dd')}
                            </span>
                        </div>
                        <div class="news-item__con">
                            <p itemprop="name headline">
                                ${post.title!}
                            </p>
                            <span>
                                <@functions.generateSummary post/>
                            </span>
                        </div>
                        <a class="news-item__link" itemprop="url" href="${post.fullPath!}"></a>
                        <img class="news-item-image cover ls-is-cached lazyloaded" src="${post.thumbnail!}" alt="${post.title!}">
                    </div>
                </article>
            </#list>
        </div>
        <#if posts.totalPages gt 1>
            <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                <div class="posts-nav" style="padding: 1rem 0 1rem 0;font-size: 2rem;">
                    <#if pagination.hasNext>
                        <div style="float:right;">
                            <a class="next" href="${pagination.nextPageFullPath!}">
                                <span class="page-numbers">→</span>
                            </a>
                        </div>
                    </#if>
                    <#if pagination.hasPrev>
                        <a class="prev" href="${pagination.prevPageFullPath!}">
                            <span class="page-numbers">←</span>
                        </a>
                    </#if>
                </div>
            </@paginationTag>
        </#if>
    </div>
</@layout>
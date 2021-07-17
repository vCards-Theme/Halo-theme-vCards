<#include "modules/layout.ftl">
<#import "./functions.ftl" as functions />
<@layout title="${blog_title!}">
    <div class="box box-content">
        <div class="pb-2">
            <h3 class="title title--h1 first-title title__separate">标签【 ${tag.name!} 】下的文章</h3>
        </div>
        <div class="news-grid">
            <#if posts.content?size gt 0>
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
                            <img class="news-item-image cover ls-is-cached lazyloaded" src="${post.thumbnail!}"
                                 alt="${post.title!}">
                        </div>
                    </article>
                </#list>
            <#else>
                <article class="post">
                    <h2 class="">
                        暂无文章~
                    </h2>
                </article>
            </#if>
            <?php $this->pageNav('&laquo; 前一页', '后一页 &raquo;'); ?>
        </div>
    </div>
</@layout>
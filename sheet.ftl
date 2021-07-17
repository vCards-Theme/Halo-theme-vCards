<#include "modules/layout.ftl">
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
        <?php $this->need('comments.php'); ?>
    </div>
</@layout>
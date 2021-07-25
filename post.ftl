<#include "modules/layout.ftl">
<#include "modules/comment.ftl">
<@layout title="${blog_title!}">
    <header class="header-post">
        <div class="header-post__image-wrap">
            <div class="news-item__sort">
                <span style="color:#fff;">
                    <?php $this->category('.'); ?>
                </span>
            </div>
            <div class="news-item__date">
                <span>
                    ${post.createTime?string('yyyy-MM-dd')}
                </span>
            </div>
            <div class="header-post-news-item__con">
                <p itemprop="name headline" style="text-shadow: 0 0 5px #000; font-size: 1.5rem;margin-bottom: 3rem;">
                    ${post.title!}
                </p>
            </div>
            <img class="header-post-news-item-image" src="${post.thumbnail!}" alt="">
        </div>
    </header>

    <div class="box box-content" style="border-radius:0 0 20px 20px;">
        <article class="post" itemscope itemtype="http://schema.org/BlogPosting">
            <div class="caption-post" itemprop="articleBody">
                ${post.formatContent!}
            </div>
            <p itemprop="keywords" class="tags">
                <?php _e('#标签: '); ?>
                <?php $this->tags(', ', true, 'none'); ?>
            </p>
        </article>

        <div class="dianzan text-center">
            <?php $agree = $this->hidden?array('agree' => 0, 'recording' => true):agreeNum($this->cid); ?>
            <button class=""
            <?php echo $agree['recording']?'disabled':''; ?> type="button" id="agree-btn" data-cid="<?php echo $this->
            cid; ?>" data-url="<?php $this->permalink(); ?>">
            <i class="font-icon icon-like-fill"></i>
            <span class="agree-num"><?php echo $agree['agree']; ?></span>
            </button>
        </div>


        <div class="post_end">- THE END -</div>

        <div class="copy-text">
            <div>
                <p>非特殊说明，本博所有文章均为博主原创。</p>
                <p class="hidden-xs">如若转载，请注明出处：<a href="${post.fullPath!}">${post.fullPath!}</a>
                </p>
            </div>
        </div>

        <div style="margin-bottom: 15px;">
            <span class="post-next">上一篇:</span>
            <?php $this->theNext('%s','没有了'); ?>
        </div>

        <div>
            <span class="post-next">下一篇:</span>
            <?php $this->thePrev('%s','没有了'); ?>
        </div>
        <br>
        <@comment target=post type="post" />
    </div>
</@layout>
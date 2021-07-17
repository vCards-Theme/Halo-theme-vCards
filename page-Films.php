<?php 
/**
 * 影单
 * 
 * @package custom 
 * 
 */
if (!defined('__TYPECHO_ROOT_DIR__')) exit;
$this->need('header.php');
?>
<?php $this->need('sidebar.php'); ?>


<div class="col-12 col-md-12 col-lg-10 col_12" id='pjax'>
    <header class="header-post">
        <div class="header-post__image-wrap">
            <div class="header-post-news-item__con">
                <p itemprop="name headline" style="text-shadow: 0 0 5px #000; font-size: 1.5rem;margin-bottom: 3rem;">
                    <?php $this->title() ?>
                </p>

            </div>
            <?php if($this->options->slimg && 'guanbi'==$this->options->slimg): ?>
            <?php else: ?>
            <?php if($this->options->slimg && 'showoff'==$this->options->slimg): ?>
            <?php else: ?>
            <img class="header-post-news-item-image" src="<?php showThumbnail($this); ?>" alt="">
            <?php endif; ?>
            <?php endif; ?>

        </div>

    </header>
    <div class="box box-content">
        <article class="post" itemscope itemtype="http://schema.org/BlogPosting">

        <h1 class="title title--h1 first-title title__separate">[已看]</h1>
            <div data-status="watched" class="douban-movie-list doubanboard-list"></div>
        <h1 class="title title--h1 first-title title__separate">[想看]</h1>
            <div data-status="wish" class="douban-movie-list doubanboard-list"></div>

            

        </article>
    </div><!-- end #main-->


    <?php $this->need('footer.php'); ?>
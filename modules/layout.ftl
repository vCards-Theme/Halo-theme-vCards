<#macro layout title>
    <!DOCTYPE HTML>
    <html class="no-js" lang="zh-CN">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="renderer" content="webkit">
        <meta name="HandheldFriendly" content="true">

        <meta itemprop="name" content="若志随笔"/>
        <meta itemprop="image" content="https://q1.qlogo.cn/g?b=qq&nk=80360650&s=640"/>
        <meta name="description" itemprop="description" content="一个若志的自留地"/>

        <title>${title!}</title>

        <link rel="stylesheet" type="text/css" href="${theme_base!}/assets/styles/style.css"/>
        <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/mdui@1.0.1/dist/css/mdui.min.css"/>
        <link rel='stylesheet' href='//cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.min.css'/>
        <link rel="stylesheet" href="//cdn.staticfile.org/fancybox/3.5.2/jquery.fancybox.min.css">

        <@global.head />

        <!--[if lt IE 9]>
        <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
    <div class="scroll-line" style="width: 0;"></div>
    <main class="main">
        <!-- Header Image -->
        <#if settings.head_cover?? && settings.head_cover!=''>
            <div class="header-image">
                <div class="js-parallax" style="background-image: url('${settings.head_cover!}');"></div>
            </div>
        </#if>
        <div class="container gutter-top">
            <!-- Header -->
            <#include "../header.ftl" />
            <div class="row sticky-parent">
                <#include "../sidebar.ftl"/>
                <div class="col-12 col-md-12 col-lg-10 col_12" id='pjax'>
                    <#nested />
                    <#include "./footer.ftl" />
                </div>
            </div>
        </div>
    </main>
    <#include "./scripts.ftl" />
    </body>
    </html>
</#macro>
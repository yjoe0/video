<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html class="no-js">
<head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport"/>
        <meta content="yes" name="apple-mobile-web-app-capable"/>
        <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
        <meta content="telephone=no" name="format-detection"/>
        <meta name="renderer" content="webkit">

    <title>福利视频集</title>

    <!-- 使用url函数转换相关路径 -->
    <script type="text/javascript" src="http://v.opihome.me/usr/themes/chopstack/jquery.js"></script>
    <link rel="stylesheet" href="http://v.opihome.me/usr/themes/chopstack/grid.css">
    <link rel="stylesheet" href="http://v.opihome.me/usr/themes/chopstack/style.css">

</head>
<body>

<div id="header">
    <div class="body_container">
        <div class="header-inner clearfix">
            <div class="site-name">
                <a href="http://v.opihome.me/"> 
                <div id="logo">
                    福利视频集                </div>
</a> 
                <h1 class="title">
                    福利视频集                </h1>
            </div>
            <div id="nav-menu" class="hidden-if-min">
                <div class="bitcron_nav_container">
                    <div class="bitcron_nav">
                        <div class="mixed_site_nav_wrap site_nav_wrap">
                            <ul class="mixed_site_nav site_nav sm sm-base">
                                <li><a class="current" href="/">首页</a></li>
                                        
                        <li><a href="/login" title="登陆">登陆</a></li>

                                                </ul>
                            <div class="clear clear_nav_inline_end">
                            </div>
                        </div>
                    </div>
                    <div class="clear clear_nav_end">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>





<div id="layout">


<div style="background:#f5f5f5 url(https://joe0.stackstorage.com/public-share/<?php echo C('IMG_KEY');?>/preview?path=%2F<?php echo $data['cover']?>&mode=thumbnail&size=medium) center;background-size:cover;" class="neck-cover"></div>

<style>#nav-menu .site_nav li a{
    color:#fff!important;
}
#logo{
    color:#ccc!important;
}
#logo:hover{
    color:#f5f5f5!important;
}
#header .site-name .site-avatar{
    border-color:#ccc;
}
.post-lady{
    margin-top:0!important;
}
.post-page .post-title-position-box .post-header-title{
    color:#222!important;
}
</style>




    <div class="post-layout">
        <div class="body_container">


            <div class="pure-g">
                <div class="hidden-if-min pure-u-sm-1-16 pure-u-md-1-6">
                    <div class="post-aside">
                    </div>
                </div>
                <div class="pure-u-1 pure-u-sm-7-8 pure-u-md-2-3 post-body">
                    <div class="post">
                        <div class="post-title-position-box">
                            <div class="post-date">
                                <?php echo substr($data['updatetime'],0,10);?>  更新                        </div>
                            <h1 class="post-header-title">
                                <?php echo $data['title']?>                            </h1>
                        </div>
                        <div class="post-content">
                        <video id="video" x-webkit-airplay="true" autoplay="false" webkit-playsinline="true" preload="auto" playsinline="true" src="https://joe0.stackstorage.com/public-share/<?php echo C('VIDEO_KEY')?>/preview?path=%2F<?php echo $data['video']?>&mode=full" style="width: 98%;max-height: 800px;" poster="https://joe0.stackstorage.com/public-share/<?php echo C('IMG_KEY');?>/preview?path=%2F<?php echo $data['cover']?>&mode=thumbnail&size=medium"> </video>
                        </div>
                    </div>
                </div>
            </div>



<style>#header #nav-menu .site_nav span:first-child a {
    border-bottom:2px solid #000;
}
</style>


        </div>
    </div>
</div>


<div id="footer">
    <div class="body_container">
        <div class="foot-log">
            2017 © <a href="http://v.opihome.me/" real="nofollow">福利视频集</a> . Powered by <a rel="nofollow" target="_blank" href="https://typecho.me/954.html">typecho</a> . Theme by <a rel="nofollow" href="https://chopstack.com">Cho</a> 
        </div>
    </div>
</div>


</body>
</html>
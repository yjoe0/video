
<!DOCTYPE HTML>
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
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/th/grid.css">
    <link rel="stylesheet" href="/css/th/style.css">

</head>
<body>

<div id="header">
    <div class="body_container">
        <div class="header-inner clearfix">
            <div class="site-name">
                <div id="logo">
                    <a href="/">福利视频集</a> |
                    <a href="/movie">福利大片</a>
                </div>

            </div>
            <div id="nav-menu" class="hidden-if-min">
                <div class="bitcron_nav_container">
                    <div class="bitcron_nav">
                        <div class="mixed_site_nav_wrap site_nav_wrap">
                            <ul class="mixed_site_nav site_nav sm sm-base">
                                <li><a class="current" href="/">首页</a></li>
                                        
                        <li>
                                                    <a href="/login" title="登陆">登陆
                                                </a></li>

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


<div id="layout" style="text-align: center;padding: 0  10px;">
<div style="border: 1px  solid">
    <div class="pure-g">
                <div class="pure-u-4-5"><p>标题</p></div>
                <div class="pure-u-1-5"><p>大小</p></div>
            </div>
        <?php foreach($data as $key => $value) {?>
        <div class="pure-g border">
                <div class="pure-u-4-5 titles"><a href='movie/<?php echo $value['id']?>'><p><?php echo $value['title']?></p></a></div>
                <div class="pure-u-1-5 size"><p><?php echo $value['size']?></p></div>
            </div>
                <?php  } ?>

        </div>
</div>
<style> 
.titles {
    overflow: hidden;
}
.border {
    border-bottom: 1px solid; 
}
.add-cover {
    -webkit-filter: blur(8px); 
    -moz-filter: blur(8px); -ms-filter: blur(8px);filter: blur(8px); 
    filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius=5, MakeShadow=false);} </style>

<include file="./Application/Index/View/footer.tpl" />
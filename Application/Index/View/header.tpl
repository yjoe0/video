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
                        <?php  if($user['uid'] == 0) { ?>
                            <a href="/login" title="登陆">登陆
                        <?php } else { ?>
                            <a href="/user" title="用户中心">用户中心
                        <?php }?>
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
                        <div>
                <div class="ainfo">
                <div class="tbox" style="max-width: 400px;">
                    <input type="text" name="keyword" id="keyword" class="ci" placeholder="回车搜索" value="" required="true" >
                </div>
                </div>
            </div>
        </div>
    </div>
</div>




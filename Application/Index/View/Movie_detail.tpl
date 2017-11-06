
<!DOCTYPE HTML>
<html class="no-js">
<head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport"/>
        <meta content="yes" name="apple-mobile-web-app-capable"/>
        <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
        <meta content="telephone=no" name="format-detection"/>
        <meta name="renderer" content="webkit">

    <title><?php echo $data['title']?>-在线播放</title>

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
                <div class="pure-u-5-5" style="color:red;font-size: 18px;"><p>如果不能播放请直接下载该视频！</p></div>
            </div>
        <div class="pure-g">
                <div class="pure-u-3-5"><p><?php echo $data['title']?></p></div>
                <div class="pure-u-1-5"><p><?php echo $data['size']?></p></div>
                <div class="pure-u-1-5"><a href="<?php echo $data['video']?>" style="color:blue"><p>点我下载</p></a></div>
            </div>
</div>
<video width="100%" controls="controls"> 
<source src="<?php echo $data['video']?>" type="video/ogg"> 
<source src="<?php echo $data['video']?>" type="video/mp4"> 
  <source src="<?php echo $data['video']?>" type="video/wmv"> 
您的浏览器不支持此种视频格式。 
</video> 
<include file="./Application/Index/View/footer.tpl" />
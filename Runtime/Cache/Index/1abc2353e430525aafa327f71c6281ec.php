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
    <div class="body_container">
        <div class="pure-g">



            <div class="post-cols">
                <div id="list_container">
<?php foreach($datas as $key => $data) {?>
        
<article class="post-box pure-u-1 pure-u-sm-1-2 pure-u-md-2-3" style="width:300px">
                    <div class="post">

                    <!--如果不是第2条-->

                     <!--如果有img-->

                        <a href="/detail/<?php echo $data['id']?>" rel="nofollow" class="post-cover-box"> 
                        <div style="background-image:url(https://joe0.stackstorage.com/public-share/<?php echo C('IMG_KEY');?>/preview?path=%2F<?php echo $data['cover']?>&mode=thumbnail&size=medium);" class="post-cover <?php if($user['fee'] < $data['fee']){ echo 'add-cover'; } ?>"
                        >
                        </div>
</a> 
                        <div class="post-text" style="height:6em">
                            <h2 class="post-title">
                            <?php if( ($data['fee'] == '0') || ($user['fee'] >= $data['fee']) ) {?>
                                <a href="/detail/<?php echo $data['id']?>"><?php echo $data['title']?></a> 
                            <?php } else if($user['uid'] == 0){?>
                            <a href="/login") ?>">登陆后可见，点我登陆</a> 
                            <?php } else {?>
                            <a href="/user")}">权限不够，请在个人中心升级</a> 
                            <?php }?>
                            </h2>

                            <div class="post-meta">
                                <?php echo substr($data['updatetime'],0,10);?>                         </div>
                        </div>


                     <!--不包括img结束-->

                     <!--不是第2条结束-->

                    </div>
</article>
<?php } ?>
        
                </div>
            </div>
            
            <div class="pure-u-1-1">
                <div class="paginator pager pagination" style="text-align: center;">
                    <div class="paginator_container pagination_container">
              <?php echo $show;?>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
<style> 
.add-cover {
    -webkit-filter: blur(5px); 
    -moz-filter: blur(5px); -ms-filter: blur(5px);filter: blur(5px); 
    filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius=5, MakeShadow=false);} </style>


</body>
</html>
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
        <div class="row">
            用户名:<span><?php echo $user['username']?></span>
        </div>
        <div class="row">
            用户积分:<span><?php echo intval($user['fee'])?></span>

        </div>
         <div class="row">
            上次操作时间:<span><?php echo ($user['updatetime'])?></span>
        </div>
        <div class="row">
            激活码:<span>
            <div class="ainfo" style="max-width: 300px;">
                            <div class="tbox" >
                    <input type="text" name="card" id="card" class="ci" placeholder="请输入激活码" value="" required="">
                    <span style="display: inline-flex">
                    <input type="text" name="card" id="captcha" class="ci" placeholder="请输入验证码" value="" required="" style="width: 50%"><span style="padding: 4px 2px;">
                        <img src="/captcha" id="img-captcha" style="width: 100%;">
                        </span>
                    </span>
                    </div>
                <button type="submit" class="submit" id="submit" style="text-align: left;">提交验证</button>
                <span><a href="http://www.youka.la/category/82383979C604F23B?1" target="_blank">没有激活码？点击获取</a></span>
        </div>
            </span>
        </div>
    </div>
</div>
<style> 
.row {
    margin: 5px;
    line-height: 25px;
    font-size: 18px;
}

</style>

<script>
    $('#img-captcha').click(function(){
        $('#img-captcha').attr('src','/captcha?t='+Math.random());
    });
    $('#submit').click(function(){
        var token = $('#card').val();
        var captcha = $('#captcha').val();
        var data = {};
        if( /^[0-9a-z]{32}$/i.test(token) ) {
            data['token'] = token;
        } else {
            alert('激活码只能包括字母和数字');
            return;
        }
        if( captcha == '' ) {
            alert('验证码不能为空');
            return;
        } else {
            data['captcha']  =captcha;
        }
        $.post('/check',data, function(data){
            var data = JSON.parse(data);
            if( data.status != '1' ) {
                alert(data.msg);
                $('#img-captcha').click();
                return;
            } else {
                window.location.reload();
            }
        });
    });
</script>

</body>
</html>
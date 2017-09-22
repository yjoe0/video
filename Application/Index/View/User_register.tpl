<!DOCTYPE HTML>
<html class="no-js">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
        <meta name="renderer" content="webkit">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>用户注册 - 福利视频集</title>
        <meta name="robots" content="noindex, nofollow">
        <link rel="stylesheet" href="http://v.opihome.me/css/normalize.css?v=14.10.10">
<link rel="stylesheet" href="http://v.opihome.me/css/grid.css?v=14.10.10">
<link rel="stylesheet" href="http://v.opihome.me/css/style.css?v=14.10.10">
<!--[if lt IE 9]>
<script src="http://v.opihome.me/js/html5shiv.js?v=14.10.10"></script>
<script src="http://v.opihome.me/js/respond.js?v=14.10.10"></script>
<![endif]-->    </head>
    <body class="body-100">
    <!--[if lt IE 9]>
        <div class="message error browsehappy" role="dialog">当前网页 <strong>不支持</strong> 你正在使用的浏览器. 为了正常的访问, 请 <a href="http://browsehappy.com/">升级你的浏览器</a>.</div>
    <![endif]-->
<div class="typecho-login-wrap">
    <div class="typecho-login">
            <p>
                <label for="name" class="sr-only">用户名</label>
                <input type="text" id="name" name="name" value="" placeholder="用户名" class="text-l w-100" autofocus />
            </p>
            <p>
                <label for="password" class="sr-only">密码</label>
                <input type="password" id="password" name="password" class="text-l w-100" placeholder="密码" />
            </p>
            <p>
                <label for="repassword" class="sr-only">确认密码</label>
                <input type="password" id="repassword" name="repassword" class="text-l w-100" placeholder="确认密码" />
            </p>
            <p>
                <label for="captcha" class="sr-only">验证码</label>
                <input type="text" id="captcha" name="captcha" class="text-l w-100" placeholder="验证码">
            </p>
            <p>
                <img src="/captcha" style="margin: 5px;width: 100%" id="img-captcha">
            </p>
            <p class="submit">
                <button type="submit" class="btn btn-l w-100 primary" id="submit">注册</button>
            </p>
        
        <p class="more-link">
            <a href="/">返回首页</a>
                        &bull;
            <a href="/login">用户登陆</a>
                    </p>
    </div>
</div>
<script src="http://v.opihome.me/js/jquery.js?v=14.10.10"></script>
<script>
$(document).ready(function () {
    $('#name').focus();
    $('#img-captcha').click(function(){
        $('#img-captcha').attr('src','/captcha?t='+Math.random());
    });
    $('#submit').click(function(){
        var name = $('#name').val();
        var password = $('#password').val();
        var repassword = $('#repassword').val();
        var captcha = $('#captcha').val();
        var data = {};
        if( /^[0-9a-z]+$/i.test(name) ) {
            data['name'] = name;
        } else {
            alert('用户名只能包括字母和数字');
            return;
        }
        if(repassword != password) {
            alert('密码不一致');
            return;
        }
        if( password == '' ) {
            alert('密码不能为空');
            return;
        } else {
            data['password']  =password;
        }
        if( captcha == '' ) {
            alert('验证码不能为空');
            return;
        } else {
            data['captcha']  =captcha;
        }
        $.post('/register',data, function(data){
            var data = JSON.parse(data);
            if( data.status != '1' ) {
                alert(data.msg);
                $('#img-captcha').click();
                return;
            } else {
                window.location.href = window.location.origin+'/'+data.url;
            }
        });
    });
});
</script>
    </body>
</html>

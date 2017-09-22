<include file="./Application/Index/View/header.tpl" />
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

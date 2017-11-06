<!DOCTYPE html>
<html>
<head>
    <title>个人聊天</title>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" >
    <meta http-equiv="Cache-Control" content="no-transform " /> 
    <script type="text/javascript" src="https://cdn.staticfile.org/socket.io/1.3.5/socket.io.min.js"></script>
</head>
<style type="text/css">
    html,body{
        height:100%;
        margin: 2px;
        background: #fbfbfb;
    } 
    #filePicker {
        display: inline-block;
        padding: 2px;
        min-width: 35px;
    }
    input {
        width: 85%;
        box-sizing: border-box;
        font-size:1.4em;
        height: 40px;
        line-height: 45px;
        border-radius:4px;
        border:1px solid #c8cccf;
        color:#6a6f77;
        -web-kit-appearance:none;
        -moz-appearance: none;
        outline:0;
        padding: 2px;
        text-decoration:none;
    }
    input[type=file] {
        display: none;
    }
    button {
        /*float: right;*/
        height:40px ;
        font-size:14px;
        color:gray;
        border: 1px solid #fbfbfb; 
        margin-left: 5px;            
        background-color:#F1F1F1;      
        border-radius:10px 10px 10px 10px;
        cursor:pointer;
        width: 60px;
    }
    .my_send {
        float: right;
        background: hsla(119, 69%, 51%, 0.64);
        display: inline-block;
        padding: 3px;
        max-width: 87%;
        border-radius: 4px;
        word-wrap:break-word;
        margin-top: 20px;
    }
    .my_send img {
        float: right;
        max-width: 300px;
        height: auto;;
    }
    .receive {
        display: inline-flex;
    }
    .receive b {
        font-size: 12px;
        cursor: pointer;
    }
    .receive_box {
        display: inline-block;
        padding: 3px;
        max-width: 200px;
        word-wrap:break-word;
        background: #3385ff;
        border-radius: 4px;
    }
    .receive_box img {
        width: 99%;
        height: auto;
        top: 0px;
        left: 0px;
    }
    .receive_box video {
        width: 99%;
        height: auto;
        top: 0px;
        left: 0px;
    }
    .full {
        position: absolute;
        left: 20px;
        top: 20px
    }
    .trangle-right{
        float: right;
        margin:24px 6px 5px -3px;
        width:0;
        height:0;
        border-top:8px solid transparent;
        border-bottom:8px solid transparent;
        border-left:8px solid hsla(119, 69%, 51%, 0.64);
        }
    b {
        /*width: 80px;*/
    }
    legend {
        position: fixed;
        top: -4px;
        background-color: #fbfbfb;
    }
</style>
<body>



<div style="height: 90%">
    <fieldset style="height: 95%;Overflow-y:scroll;" id='container'>
      <legend>
        <?php 
            echo '源码数据-频道-当前';
        echo $number_p;
      ?></legend>
      <div id="msg_list">
        <div id="msg_end" style="height:0px; overflow:hidden"></div>
      </div>
    </fieldset>
</div>
<div style="width: 100%; margin:2px; display: inline-flex;">
 <?php if($user['uid']==0) {?>
    <a href="/login" style="width: 98%; text-decoration: none;text-align: center;">请先登录,点我去登陆</a>
    <script>
        setTimeout(function(){window.location.href = window.location.origin+'/login';},10000);
    </script>
<?php } else {?> 
    <input type="text" name="msg" id="send_text" ?>
    <?php }?>
    <button id="send">发送</button>
</div>

<input type="hidden" name="mySend" value="" id='mySend'>
</body>
<script type="text/javascript" src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="/Public/js/yunba-js-sdk.js"></script>
<script type="text/javascript" src="/Public/js/chat.js"></script>

<script>


    var yunba = new Yunba({server: 'sock.yunba.io', port: 3000, appkey: '<?php echo C('YUNBA_KEY');?>'});    
    var topic = '<?php echo md5( date("y-m") );?>';
    var alias = '<?php echo $user['username'];?>';
    var mySend = $('#mySend');
    var w = $(window).height();
    var C = $('#container');
    var M = $('#msg_list');
    var customid = '<?php echo md5($user['uid'])?>';

    //  初始化
    yunba.init(function (success) {
        if (success) {
            yunba.connect_by_customid(customid, function (success, msg, sessionid) {
                if (success) {
                    new Toast({context:$('body'),message:'已成功连接到服务器'}).show();
                    subscribe('源码数据');
                    onMessage();
                } else {
                    $('#msg_list').append(msg);
                }
            });
        }
    });

</script>
<span style="display: none;"><script src="https://s19.cnzz.com/z_stat.php?id=1264503371&web_id=1264503371" language="JavaScript"></script></span>
</html>

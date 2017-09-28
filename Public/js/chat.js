    // 订阅
    function subscribe(topicName) {
        yunba.subscribe({'topic': topic}, 
            function (success, msg) {
                if (success) {
                    new Toast({context:$('body'),message:'你已进入频道：'+topicName}).show();
                    send("用户 》"+alias+'《进入频道');
                    // setTimeout(refresh, Math.random()*5000);
                } else {
                    $('#msg_list').append(msg);
                }
            });
    }

    function onMessage() {
        yunba.set_message_cb(function (data) {
            console.log(data);
            data.msg = unescape(data.msg.split('').reverse().join(''));

                if (data.msg != mySend.val() ) {
                    $('#msg_list').append( data.msg );
                    scrollIntoView();
                    notify();
                }
        });
    }

// 发送消息
    function send(content) {
        if ( IsURL(content) ) {
            var images = ["jpg","png","gif","peg"];
            var video = ['mp4'];
            var ext = content.substr(-3);
            if (images.indexOf(ext) > -1) {
                content = '<img onclick="full(this)" src='+content+'>';
            } else if (video.indexOf(ext) > -1) {
                content = '<a target="_blank" href="'+content+'">视频:'+content.substr(0,43)+'...</a>';
            } else {
                content = '<a target="_blank" href="'+content+'">'+content.substr(0,43)+'...</a>';
            }
        }

        var sendContent = '<p><div class="receive"><b>'+alias+'</b>：<span class="receive_box">'+content+"</span></div>";
        

        mySend.val(sendContent);
        sendContent = escape(sendContent).split('').reverse().join('');
            yunba.publish({'topic': topic, 'msg': sendContent,qos:1 },
                function (success, msg) {
                    if (success) {
                        $('#msg_list').append('<p><span class="trangle-right"></span><div class="my_send">'+content+'</div><br/></p><br/>');
                        scrollIntoView(); 
                    } else {
                        $('#msg_list').append(msg);
                    }
            });
    }


    function IsURL(url){
        var urlRegExp= /(https?|ftp|file):\/\/[-A-Za-z0-9+&@#\/%?=~_|!:,.;]+[-A-Za-z0-9+&@#\/%=~_|]/;
        if(urlRegExp.test(url)){
            return true;
        }else{
            return false;
        }
    }
    function full(e) {
        $(e).toggleClass("full");
    }

    $(document).ready(function(){

    $('#send').click(function(){
        var send_text = $('#send_text');
        var content = send_text.val();
        if (content == "") {
            new Toast({context:$('body'),message:'不能发送空白消息'}).show();
            return;
        }
        send(content);
        send_text.val('');
    });



    $("body").keydown(function() {
             if (event.keyCode == "13") {//keyCode=13是回车键
                 $('#send').click();
             }
    });
});


    function scrollIntoView() {
        C.scrollTop( M.height() );

    }
/** 
 * 模仿android里面的Toast效果，主要是用于在不打断程序正常执行的情况下显示提示数据 
 * @param config 
 * @return 
 */  
var Toast = function(config){  
    this.context = config.context==null?$('body'):config.context;//上下文  
    this.message = config.message;//显示内容  
    this.time = config.time==null?2000:config.time;//持续时间  
    this.left = config.left;//距容器左边的距离  
    this.top = config.top;//距容器上方的距离  
    this.init();  
}  
var msgEntity;  
Toast.prototype = {  
    //初始化显示的位置内容等  
    init : function(){  
        $("#toastMessage").remove();  
        //设置消息体  
        var msgDIV = new Array();  
        msgDIV.push('<div id="toastMessage" style="border-radius:18px;-moz-opacity:0.6;opacity:0.6;">');  
        msgDIV.push('<span>'+this.message+'</span>');  
        msgDIV.push('</div>');  
        msgEntity = $(msgDIV.join('')).appendTo(this.context);  
        //设置消息样式  
        var left = this.left == null ? this.context.width()/2-msgEntity.find('span').width()/2 : this.left;  
        var top = this.top == null ? '100px' : this.top;  
        msgEntity.css({position:'absolute',bottom:top,'z-index':'99',left:left,'background-color':'black',color:'white','font-size':'15px',padding:'10px',margin:'10px'});  
        msgEntity.hide();  
    },  
    //显示动画  
    show :function(){  
        msgEntity.fadeIn(this.time/2);  
        msgEntity.fadeOut(this.time/2);  
    }  
          
}  
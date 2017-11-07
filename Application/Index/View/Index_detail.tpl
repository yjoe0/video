<include file="./Application/Index/View/header.tpl" />

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
                        <div style="margin-top: 1em;">
                            <a href="http://qingyanqudou.com/BAyk?y=AVUZn" target="_blank">
                                <img src="/Public/ad.gif" style="width: 100%;">
                            </a>
                        </div>
                        <div class="post-content">
                        <video id="video" x-webkit-airplay="true" autoplay="false" webkit-playsinline="true" preload="auto" playsinline="true" src="https://joe0.stackstorage.com/public-share/<?php echo C('VIDEO_KEY')?>/preview?path=%2F<?php echo $data['video']?>&mode=full" style="width: 98%;max-height: 800px;" poster="https://joe0.stackstorage.com/public-share/<?php echo C('IMG_KEY');?>/preview?path=%2F<?php echo $data['cover']?>&mode=thumbnail&size=medium"> </video>
                        <div style="margin-top: 1em;font-size: 20px;text-align: center;color: red;">
                            <a href="http://www.oetf5555.com:9001/?u=711111&k=7111&p=290" target="_blank" style="color: red">
                                不够爽？点我来看真人直播吧
                            </a>
                        </div>
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
<script>
    $(this).find('audio').bind('ended',function () {
   $('.voice').removeClass('voice1');
});
    function waudioAutoPlay() {
        var audio = document.getElementById('video');
            audio.play();
        document.addEventListener("WeixinJSBridgeReady", function () {
            audio.play();
        }, false);
    }
   function audioAutoPlay() {
                var audio = document.getElementById('video');
                    audio.play();
                
            }
        //--创建页面监听，等待微信端页面加载完毕 触发音频播放
        document.addEventListener('DOMContentLoaded', waudioAutoPlay(),false);
        //--创建触摸监听，当浏览器打开页面时，触摸屏幕触发事件，进行音频播放
        document.addEventListener('touchstart', audioAutoPlay() ,false);
        document.removeEventListener('DOMContentLoaded', waudioAutoPlay(),false);
        document.removeEventListener('touchstart', waudioAutoPlay(),false);
        var audio = document.getElementById('video');
        audio.addEventListener('ended',function(){
          var r=confirm("不够爽？去看真人直播吧")
          if (r==true) {
                window.open("http://www.oetf5555.com:9001/?u=711111&k=7111&p=290");  
            }
        });

</script>

<include file="./Application/Index/View/footer.tpl" />

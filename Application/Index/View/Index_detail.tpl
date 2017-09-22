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
                        <div class="post-content">
                        <video id="video" x-webkit-airplay="true" autoplay="false" webkit-playsinline="true" preload="auto" playsinline="true" src="https://joe0.stackstorage.com/public-share/<?php echo C('VIDEO_KEY')?>/preview?path=%2F<?php echo $data['video']?>&mode=full" style="width: 98%;max-height: 800px;" poster="https://joe0.stackstorage.com/public-share/<?php echo C('IMG_KEY');?>/preview?path=%2F<?php echo $data['cover']?>&mode=thumbnail&size=medium"> </video>
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


<include file="./Application/Index/View/footer.tpl" />

<include file="./Application/Index/View/header.tpl" />
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
                        <div style="background-image:url(https://joe0.stackstorage.com/public-share/<?php echo C('IMG_KEY');?>/preview?path=%2F<?php echo $data['cover']?>&mode=thumbnail&size=medium);" class="post-cover <?php if($user['fee'] < $data['fee']){ echo 'add-cover';  } ?>"
                        >
                        </div>
</a> 
                        <div class="post-text" style="height:6em">
                            <h2 class="post-title">
                            <?php if( ($data['fee'] == '0') || ($user['fee'] >= $data['fee']) )  {?>
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

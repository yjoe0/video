<?php
return array(
    'DEFAULT_MODULE' => 'Index',
    'URL_ROUTER_ON'   => true, 
    'URL_ROUTE_RULES'=>array(
        'detail/:vid\d' => 'Index/Index/detail',
        'login' => 'Index/User/login',
        'captcha' => 'Index/User/captcha',
        'user' => 'Index/User/user',
        'register' => 'Index/User/register',
        's/:keyword\w' => 'Index/Index/search',
        'check' => 'Index/User/check',
    ),

 );
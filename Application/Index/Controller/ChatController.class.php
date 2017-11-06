<?php
namespace Index\Controller;
use Think\Controller;
class ChatController extends Controller {

    public function index() {
        $user = A('user')->info();
        if($user['uid']>0) {
            $order = 'id desc';
        } else {
            $order = 'id asc';
        }
        $this->assign('user',$user);
        $this->display();
    }

}

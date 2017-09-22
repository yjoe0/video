<?php
namespace Index\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){

        $Contents = M('contents');
        $count      = $Contents->count();
        $Page       = new \Think\Page($count,8);
        $show       = $Page->show();
        $datas = $Contents->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('datas',$datas);
        $this->assign('show',$show);
        $this->assign('user',A('user')->info());
        $this->display();
    }

    public function detail() {
        $vid = intval(I('get.vid'));

        if($vid == 0) {
            echo"<script>alert('资源错误');history.go(-1);</script>";  
            die();
        }
        $Contents = M('contents');
        $condition['id'] = $vid;
        $data = $Contents->where( $condition )->find();
        if($data) {
            $Contents->where($condition)->setInc('views',1);
            $user = A('user')->info();
            if( $data['fee'] > $user['fee']) {
                echo"<script>alert('抱歉，你没有权限访问该页');history.go(-1);</script>";  
                die();
            } else {
                $this->assign('data',$data);
                $this->display();
            }
        } else {
            echo"<script>alert('资源错误');history.go(-1);</script>";  
            die();
        }
    }























}
<?php
namespace Index\Controller;
use Think\Controller;
class MovieController extends Controller {
    public function index() {
        $movie = M('movie');
        $datas = $movie->select();

        $this->assign('data', $datas);
        $this->display();
    }
    public function detail() {
        $vid = intval(I('get.vid'));

        if($vid == 0) {
            echo"<script>alert('资源错误');history.go(-1);</script>";  
            die();
        }
        $movie = M('movie');
        $condition['id'] = $vid;
        $data = $movie->where( $condition )->find();
        if($data) {
            $movie->where($condition)->setInc('views',1);
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
<?php
namespace Index\Controller;
use Think\Controller;
class UserController extends Controller {


    public function info(){

        if ( isset($_SESSION['uid']) ) {
            $userId = intval($_SESSION['uid']);
        } else {
            $userId = -1;
        }
        if($userId < 0) {
            return array('username'=>'游客','fee'=>0,'uid'=>0);
        }
        $user = M('user');
        $condition['uid']=$userId;
        $res = $user->where($condition)->find();
        return $res;
    }

    public function login() {
        $info = $this->info();
        if($info['uid']>0) {
            header('location:/user');
            die();
        }
        if(IS_GET) {
            $this->display();
            die();
        }
        $name = $_POST['name'];
        $pwd = $_POST['password'];
        $captcha = $_POST['captcha'];
        $verify = new \Think\Verify();
        if ( !$verify->check($captcha) ) {
            $res = array('status'=>0,'msg'=> '验证码错误');
            echo json_encode($res);
            die();
        }

        if(!preg_match('/^[0-9a-zA-Z]+$/', $name)) {
            $res = array('status'=>0,'msg'=> '用户名只能是字母和数字');
            echo json_encode($res);
            die();
        }
        $user = M('user');
        $condition['username'] = $name;
        $condition['password'] = md5($pwd);
        $data = $user->where($condition)->find();
        if ($data) {
            $_SESSION['uid']=$data['uid'];
            $res = array('status'=>1,'msg'=> '登陆成功','url'=>'user');
            echo json_encode($res);
            die();
        } else {
            $res = array('status'=>0,'msg'=> '用户名或密码错误');
            echo json_encode($res);
            die();
        }
    }

    public function register() {
        $info = $this->info();
        if($info['uid']>0) {
            header('location:/user');
            die();
        }
        if(IS_GET) {
            $this->display();
            die();
        }
        $name = $_POST['name'];
        $pwd = $_POST['password'];
        $captcha = $_POST['captcha'];
        $verify = new \Think\Verify();
        if ( !$verify->check($captcha) ) {
            $res = array('status'=>0,'msg'=> '验证码错误');
            echo json_encode($res);
            die();
        }

        if(!preg_match('/^[0-9a-zA-Z]+$/', $name)) {
            $res = array('status'=>0,'msg'=> '用户名只能是字母和数字');
            echo json_encode($res);
            die();
        }
        $user = M('user');
        $condition['username'] = $name;
        $condition['password'] = md5($pwd);
        $data = $user->create($condition);
        print_r($data);
        if ($data) {
            $_SESSION['uid']=$data['uid'];
            $user->add();
            $res = array('status'=>1,'msg'=> '注册成功','url'=>'user');
            echo json_encode($res);
            die();
        } else {
            $res = array('status'=>0,'msg'=> '用户名或密码错误');
            echo json_encode($res);
            die();
        }
    }
    public function user() {
        $user = $this->info();
        $this->assign('user',$user);
        $this->display();
    }

    public function check() {
        $captcha = $_POST['captcha'];
        $verify = new \Think\Verify();
        // if ( !$verify->check($captcha) ) {
        //     $res = array('status'=>0,'msg'=> '验证码错误');
        //     echo json_encode($res);
        //     die();
        // }

        $token = $_POST['token'];
        $check = preg_match('/^[_0-9a-z]{32}$/i', $token);
        if(!$check) {
            $res = array('status'=>0,'msg'=> '激活码错误');
            echo json_encode($res);
            die();
        }
        $T = M('token');
        $condition['token'] = $token;
        $data = $T->where($condition)->find();
        $user = $this->info();
        if($data) {
            if($data['used'] != 0) {
                $res = array('status'=>0,'msg'=> '激活码错误');
                echo json_encode($res);
                die();
            }
            $update = array(
                'used'=>1,
                'user' => $user['uid']
                );
            $T->where($condition)->save($update);
            M('user')->where($user)->setInc('fee',10);
            $res = array('status'=>1,'msg'=> '升级成功');
            echo json_encode($res);
            die();
        } else {
            $res = array('status'=>0,'msg'=> '激活码错误');
            echo json_encode($res);
            die();
        }
    }
    public function captcha() {
        $verify = new \Think\Verify();
        $verify->entry();
    }






















}
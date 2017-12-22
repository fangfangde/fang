<?php
//用户在登录前判断是否在session中保存过
session_start();
header("Content-Type:application/json;charset=utf-8");
require("init.php");
@$uid=$_SESSION["uid"];
//@$uid=$_REQUEST["uid"];	
if($uid){
    $sql="select uname from pk_user where uid=$uid";
    $uname=sql_execute($sql)[0]["uname"];
    echo '{"code":1,"uname":"'.$uname.'","uid":"'.$uid.'"}';
   }else{
    echo '{"code":-1,"uname":"","uid":"'.$uid.'"}';
   }
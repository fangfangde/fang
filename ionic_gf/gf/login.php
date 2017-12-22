<?php
session_start();
require("init.php");
header("Content-Type:application/json;charset=utf-8");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
$sql="select uid from gf_user where uname='$uname' and upwd='$upwd'";
//echo $sql;
$result=sql_execute($sql);
//var_dump( $result);
if($result){
    $_SESSION["uid"]=$result[0]["uid"];
    echo '{"code":1,"msg":"登录成功"}';
}else{
    echo '{"code":-1,"msg":"用户名或密码错误!请重新登录"}';
}

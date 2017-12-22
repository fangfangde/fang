<?php
session_start();
require("init.php");
header("Content-Type:application/json;charset=utf-8");
@$uname=$_REQUEST["uname"];
@$pwd=$_REQUEST["pwd"];
$sql="select uid from pk_user where uname='$uname' and pwd='$pwd'";
$result=sql_execute($sql);
if($result){
    $_SESSION["uid"]=$result[0]["uid"];
    echo '{"code":1,"msg":"登录成功","uid":"'.$_SESSION["uid"].'"}';
}else{
    echo '{"code":-1,"msg":"用户名或密码错误!请重新登录"}';
}

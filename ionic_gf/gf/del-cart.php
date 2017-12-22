<?php
session_start();
header("Content-Type:application/json;charset=utf-8");
require("init.php");
$uid=$_SESSION["uid"];
$pid=$_REQUEST["pid"];
$sql="delete from pk_shoppingcart_item where uid=$uid and pid=$pid";
$result=sql_execute($sql);
if($result){
	echo '{"code":1,"msg":"删除成功"}';
}else{
	echo '{"code":-1,"msg":"删除失败"}';
}
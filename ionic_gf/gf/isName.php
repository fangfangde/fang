<?php
header("Content-Type:application/json;charset=utf-8");
require("init.php");
@$uname=$_REQUEST["uname"];
$sql="select * from pk_user where uname='$uname'";
$result=sql_execute($sql);
if($result){
	echo '{"code":-1,"msg":"用户名已被占用"}';
}else{
	echo '{"code":1,"msg":"用户名可以用"}';
}

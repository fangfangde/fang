<?php
header("Content-Type:application/json;charset=utf-8");
require("init.php");
@$uname=$_REQUEST["uname"];
@$pwd=$_REQUEST["pwd"];
@$email=$_REQUEST["email"];
@$phone=$_REQUEST["phone"];
$sql="insert into pk_user values(null,'$uname','$pwd','$email','$phone',null,null,null)";
$result=sql_execute($sql);
if($result){
	echo '{"code":1,"msg":"注册成功"}';
}else{
	echo '{"code":-1,"msg":"注册失败"}';
}



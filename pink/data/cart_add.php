<?php
session_start();
header("Content-Type:application/json;charset=utf-8");
require("init.php");
@$uid=$_SESSION["uid"];
@$pid=$_REQUEST["pid"];
$uid=5;
@$count=$_REQUEST["count"];
if($pid==null|| $count==null){
	$sql="select g.count,s.price,s.subtitle,p.sm from pk_shoppingcart_item g left join Pk_product s on g.pid=s.pid left join pk_product_pic p on g.pid=p.pid where g.uid=$uid" ;
	$result=sql_execute($sql);
	echo json_encode($result);
	return;
}
$sql="select * from pk_shoppingcart_item where pid=$pid and uid=$uid";
$result=sql_execute($sql);
if(count($result)==0){
	$sql="insert into pk_shoppingcart_item values(null,$uid,$pid,$count,false)";
}else{
	$sql="update pk_shoppingcart_item set count=count+$count where uid=$uid and pid=$pid";
}
$se_result=sql_execute($sql);
if($se_result){
	$sql="select g.count,s.price,s.subtitle,p.sm from pk_shoppingcart_item g left join Pk_product s on g.pid=s.pid left join pk_product_pic p on g.pid=p.pid where g.uid=$uid" ;
	$result=sql_execute($sql);
	echo json_encode($result);
}else{
	echo '{"code":-1,"msg":"失败"}';
}


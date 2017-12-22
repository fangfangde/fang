<?php
session_start();
header("Content-Type:application/json;charset=utf-8");
require("init.php");
@$uid=$_SESSION["uid"];
@$pid=$_REQUEST["pid"];
@$count=$_REQUEST["count"];
$sql="select * from gf_shoppingcart_item where pid=$pid and uid=$uid";
$result=sql_execute($sql);
if(count($result)==0){
	$sql="insert into gf_shoppingcart_item values(null,$uid,$pid,$count,false)";
}else{
	$sql="update gf_shoppingcart_item set count=count+$count where uid=$uid and pid=$pid";
}
$se_result=sql_execute($sql);
if($se_result){
	$sql="select g.count,s.price,s.title,p.md from gf_shoppingcart_item g left join gf_product s on g.pid=s.pid left join gf_product_pic p on g.pid=p.pid where g.uid=$uid" ;
	$result=sql_execute($sql);
	echo json_encode($result);
//var_dump($result);

}else{
	echo '{"code":-1,"msg":"失败"}';
}


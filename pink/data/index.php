<?php
	header("Content-Type:application/json;charset=utf-8");
	require("init.php");
	$outdata=[];
	$sql="select * from pk_product";
	$result=sql_execute($sql);
	$outdata['each']=$result;
	$sql="select * from pk_index_carousel";
	$result=sql_execute($sql);
	$outdata['carousel']=$result;
	$sql="select * from pk_index_name";
	$result=sql_execute($sql);
	$outdata['name']=$result;
echo json_encode($outdata);
//	var_dump($outdata);

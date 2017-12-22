<?php
	// 商品subtitle price  pk_product   count pk_shoppingcart_item 总价    sm图片 pk_product_pic
	
session_start();
header("Content-Type:application/json;charset=utf-8");
require("init.php");
$uid=$_SESSION['uid'];
$sql="select g.count,g.pid,s.price,s.title,p.md from gf_shoppingcart_item g left join gf_product s on g.pid=s.pid left join gf_product_pic p on g.pid=p.pid where g.uid=$uid" ;
$result=sql_execute($sql);
echo json_encode($result);











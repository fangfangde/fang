<?php
header("Content-Type:application/json;charset=utf-8");
require("init.php");
// 查询： 需要 lid  md sm lg 图片  from pk_product_pic* from pk_product spec 需要fid 
$pid=$_REQUEST["pid"];
$output=[];   
$sql="SELECT pid,fid,title,fname,
  price,sales,promise,pic_pro FROM gf_product WHERE pid=$pid";
$result=sql_execute($sql);
$output["data"]=$result[0];
$fid=$output["data"]["fid"];
$sql="SELECT fid,md FROM gf_product_pic WHERE fid=$fid";
$result=sql_execute($sql);
$output["pic"]=$result;
//var_dump($output);
echo json_encode($output);
?>





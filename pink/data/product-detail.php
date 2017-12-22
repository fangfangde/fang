<?php
header("Content-Type:application/json;charset=utf-8");
require("init.php");
// 查询： 需要 lid  md sm lg 图片  from pk_product_pic* from pk_product spec 需要fid 
$pid=$_REQUEST["pid"];
$output=[];   
$sql="SELECT pid,fid,fname,title,subtitle,pic_pro,
  price,sales,promise,weight,detail_pic,spec FROM pk_product WHERE pid=$pid";
$result=sql_execute($sql);
//var_dump($result);
$output["data"]=$result[0];
$fid=$output["data"]["fid"];
$sql="SELECT pid,fid,sm,md,lg FROM pk_product_pic WHERE fid=$fid";
$result=sql_execute($sql);
$output["pic"]=$result;
$sql="SELECT pid,spec FROM pk_product WHERE fid=$fid";
$result=sql_execute($sql);
$output["spec"]=$result;
$sql="SELECT mid,img,price,title FROM pk_recom";
$result=sql_execute($sql);
//var_dump($output);
$output['recom']=$result;
echo json_encode($output);
?>
 








<?php
require("init.php");
header("Content-Type:application/json;charset=utf-8");
@$kw=$_REQUEST["kw"];
 $kw = urldecode($kw);
@$pno=$_REQUEST["pno"];
$pageSize=6;
if(!$pno){
    $pno=1;
}else{
    $pno=$pno;
}
if($kw==""){
        $sql="select pid,fname,title,price,pic_pro from gf_product";
}else{
	$sql="select pid,fname,title,price,pic_pro from gf_product  ";
    $kws=explode(" ",$kw);
    for($i=0;$i<count($kws);$i++){
        $kws[$i]="title like '%".$kws[$i]."%'";
    }
    $where ="where ".implode("and ",$kws);
    $sql=$sql.$where;
}
$count=count(sql_execute($sql));
$sql=$sql." limit ".(($pno-1)*$pageSize)." ,".$pageSize;
$result=sql_execute($sql);
$data=$result;
$countPno=ceil($count/$pageSize);
$output=[];
$output["count"]=$count;      //总的记录数
$output["pageSize"]=$pageSize;     //每页的记录数
$output["countPno"]=$countPno;     //总的页数大小
$output["data"]=$data;           //每页的数据
$output["pno"]=$pno;           //当前页码
echo json_encode($output);
//var_dump($output);

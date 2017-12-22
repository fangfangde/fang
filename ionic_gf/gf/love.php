<?php
header("Content-Type:application/json;charset=utf-8");
require("init.php");
$sql="select * from gf_love";
$result=sql_execute($sql);
echo json_encode($result);

?>

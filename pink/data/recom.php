<?php
require("init.php");
$sql="select * from pk_recom";
$result=sql_execute($sql);
echo json_encode($result);

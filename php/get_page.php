<?php
include_once("autoloader.php");
$cq = New ContentQueries("127.0.0.1","supercar_kiddos","root","mysql");
if(isset($_REQUEST["get_page"])) {
  
  echo(json_encode($cq->getAllPagesByUrl($_REQUEST["get_page"])));
}
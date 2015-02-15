<?php

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","supercar_kiddos","root","mysql");

if (isset($_REQUEST["get_pages"])) {
	echo(json_encode($cq->getAllPages($_REQUEST["get_pages"])));
}
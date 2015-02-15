<?php

include_once ("autoloader.php");

$cq = New ContentQueries("127.0.0.1","supercar_kiddos","root","mysql");


if (isset($_REQUEST["page_info"])) {
	echo(json_encode($cq->storeNewPage($_REQUEST["page_info"])));
}
if (isset($_REQUEST["update_page"])) {
	echo(json_encode($cq->updatePage($_REQUEST["update_page"])));
}

if (isset($_REQUEST["menu_data"])) {
	echo(json_encode($cq->saveNewUrlAlias($_REQUEST["menu_data"])));
}

if (isset($_REQUEST["menu_link"])) {
	echo(json_encode($cq->addMenuLink($_REQUEST["menu_link"])));
}

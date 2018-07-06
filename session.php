<?php
//session_start();
//
//var_dump(session_name());
//
//var_dump(session_id());
//
////Example 1, 2
//if (!isset($_SESSION['time'])) {
//    $_SESSION['ua'] = $_SERVER['HTTP_USER_AGENT'];
//    $_SESSION['time'] = date("H:i:s");
//}
//
//if ($_SESSION['ua'] != $_SERVER['HTTP_USER_AGENT']) {
//    die('Wrong browser');
//}
//
//echo $_SESSION['time'];
//
///*
// * Код JS который из консоли делает подмену переменной сессии
//javascript:(function(){document.cookie='PHPSESSID=5e2sroilm4578mos3q424cmbg2;path=/;';window.location.reload();})()
// */
//echo '<pre>';
//print_r($_SESSION);
//echo '</pre>';
//
////Example 3
//unset($_SESSION['time']);
//echo '<pre>';
//print_r($_SERVER);
//echo '</pre>';
//
//$_SESSION = array();

//Example 4
//var_dump(session_save_path());
//
//session_save_path($_SERVER['DOCUMENT_ROOT'].'/sessions');
//
//session_start();

//Example 5
$lifeTime = 2;
session_set_cookie_params($lifeTime);
session_start();
var_dump(session_id());
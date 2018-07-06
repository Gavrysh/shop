<?php
session_start();

var_dump(session_name());

var_dump(session_id());

//Example 1, 2
if (!isset($_SESSION['time'])) {
    $_SESSION['ua'] = $_SERVER['HTTP_USER_AGENT'];
    $_SESSION['time'] = date("H:i:s");
}

if ($_SESSION['ua'] != $_SERVER['HTTP_USER_AGENT']) {
    die('Wrong browser');
}

echo $_SESSION['time'];

/*
 * Код JS который из консоли делает подмену переменной сессии
javascript:(function(){document.cookie='PHPSESSID=5e2sroilm4578mos3q424cmbg2;path=/;';window.location.reload();})()
 */
echo '<pre>';
print_r($_SESSION);
echo '</pre>';

//Example 3
unset($_SESSION['time']);
echo '<pre>';
print_r($_SESSION);
echo '</pre>';

$_SESSION = array();
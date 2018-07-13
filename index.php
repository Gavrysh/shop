<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

function wtf($array, $load = 0) {
    echo '<pre>';
    print_r($array);
    echo '</pre>';
    if (!$load) {
        exit;
    }
}

require_once './app/bootstrap.php';

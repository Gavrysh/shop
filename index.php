<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once  __DIR__.'/vendor/autoload.php';

use App\DB;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

if (empty($_GET)) {
    $page = 'main';
} else {
    foreach ($_GET as $key => $val) {
        preg_match('#^[a-z]+#s', $key, $m);
        if ($m[0] == 'products') {
            $page = 'products';
        } elseif ($m[0] == 'product') {
            $page = 'product';
        } elseif ($m[0] == 'basket') {
            $page = 'basket';
        } elseif ($m[0] == 'calc') {
            $page = 'calc';
        } else {
            $page = 'main';
        }
    }
}

include_once './model/'.$page.'.php';
include_once './view/main.tpl';

$var = new DB();
$var;

$var1 = new Monolog\Logger('name');
$var1->pushHandler(new StreamHandler(__DIR__.'/shop.log', Logger::WARNING));
$var1->warning('Foo');
<?php

include_once './app/core/model.php';
include_once './app/core/view.php';
include_once './app/core/controller.php';
include_once './app/core/route.php';

/*if (empty($_GET)) {
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
include_once './view/main.tpl';*/
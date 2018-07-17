<?php

include_once 'core/model.php';
include_once 'core/view.php';
include_once 'core/controller.php';
include_once 'core/route.php';
include_once 'core/data.php';
include_once 'core/default.php';

//Инициализация подключения к БД
//phpinfo();
$link = mysqli_connect(core::$DB_LOCAL, core::$DB_LOGIN, core::$DB_PASS, core::$DB_NAME);
mysqli_set_charset ($link, 'utf8');

Route::start();
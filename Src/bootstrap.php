<?php

use Config\Data;
use Core\Route;
use Core\Sessions;

$session = new Sessions();

//Инициализация подключения к БД
$link = mysqli_connect(Data::$DB_LOCAL, Data::$DB_LOGIN, Data::$DB_PASS, Data::$DB_NAME);
mysqli_set_charset ($link, 'utf8');

$router = new Route();
$router->start();
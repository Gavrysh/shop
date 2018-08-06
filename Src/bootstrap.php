<?php

use Config\Data;
use Core\Route;
use Core\Sessions;
use Core\ErrorHandler;

$session = new Sessions();
$session->start();

$errors = new ErrorHandler();
$errors->registerError();

//require_once './App/errors.php';

//Инициализация подключения к БД
$link = mysqli_connect(Data::$DB_LOCAL, Data::$DB_LOGIN, Data::$DB_PASS, Data::$DB_NAME);
mysqli_set_charset ($link, 'utf8');

$router = new Route();
$router->start();
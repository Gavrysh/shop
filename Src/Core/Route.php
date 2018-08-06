<?php

namespace Core;

class Route
{
    public function errorPage()
    {
        $host = 'http://'.$_SERVER['HTTP_HOST'].'/';
        header('HTTP/1.1 404 Not Found');
        header('Status: 404 Not Found');
        header('Location: '.$host.'ErrorPage');
    }

    public function start()
    {
        $controllerName = 'Main';
        $actionName = 'Index';

        //Разбор строки
        $routes = explode('/', $_SERVER['REQUEST_URI']);

        //Имя контроллера...
        if (!empty($routes[1])) {
            strtolower($controllerName = $routes[1]);
        }

        //Имя действия
        if (!empty($routes[2])) {
            strtolower($actionName = $routes[2]);
        }

        //Добавление файла с классом модели (файл модели может отсутствовать)
        if (file_exists('./App/Models/'.$controllerName.'.php')) {
            include './App/Models/' . $controllerName . '.php';
        }

        //Добавление файла с классом контроллера или генерирование исключения
        if (file_exists('./App/Controllers/'.$controllerName.'.php')) {
            require_once './App/Controllers/' . $controllerName . '.php';
        }
        else {
            $this->errorPage();
        }

        //Префикс
        $modelName = '\\App\\Models\\'.$controllerName;
        $controllerName = '\\App\\Controllers\\'.$controllerName;
        $actionName = 'action'.$actionName;

        //Создаем екземпляр класса контроллер
        $controller = new $controllerName;
        $action = $actionName;

        //Вьізвать действие контроллера или отослать на 404
        method_exists($controller, $action) ? $controller->$action() : $this->errorPage();
    }

}
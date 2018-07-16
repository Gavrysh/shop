<?php

class Route
{
    function errorPage404()
    {
        $host = 'http://'.$_SERVER['HTTP_HOST'].'/';
        header('HTTP/1.1 404 Not Found');
        header('Status: 404 Not Found');
        header('Location: '.$host.'404');
    }

    static function start()
    {
        //Route::errorPage404();
        $controllerName = 'main';
        $actionName = 'index';

        //Розбор строки
        $routes = explode('/', $_SERVER['REQUEST_URI']);

        //Ім'я контролера...
        if (!empty($routes[1])) {
            strtolower($controllerName = $routes[1]);
        }

        //Ім'я дії...
        if (!empty($routes[2])) {
            strtolower($actionName = $routes[2]);
        }

        //префікси...
        $modelName = 'model_'.$controllerName;
        $controllerName = 'controller_'.$controllerName;
        $actionName = 'action_'.$actionName;

        //додаємо файл із класом моделі (файл моделі може бути відсутній)
        if (file_exists('./app/models/'.$modelName.'.php')) {
            include './app/models/'.$modelName.'.php';
        }

        //додаємо файл із класом контролеру або генерація виключення
        file_exists('./app/controllers/'.$controllerName.'.php') ? require_once './app/controllers/'.$controllerName.'.php' : Route::errorPage404();

        //робимо екземпляр класу контролер
        $controller = new $controllerName;
        $action = $actionName;

        //визвано дію контролера або тут теж можна виключення організувати
        method_exists($controller, $action) ? $controller->$action() : Route::errorPage404();
    }

}
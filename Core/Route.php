<?php

namespace Core;

class Route
{
    public function errorPage404()
    {
        $host = 'http://'.$_SERVER['HTTP_HOST'].'/';
        header('HTTP/1.1 404 Not Found');
        header('Status: 404 Not Found');
        header('Location: '.$host.'Error_404');
    }

    public static function start()
    {
        //Route::errorPage404();
        $controllerName = 'Main';
        $actionName = 'Index';

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

        //додаємо файл із класом моделі (файл моделі може бути відсутній)
        if (file_exists('./App/Models/'.$controllerName.'.php')) {
            include './App/Models/' . $controllerName . '.php';
        }

        //додаємо файл із класом контролеру або генерація виключення
        if (file_exists('./App/Controllers/'.$controllerName.'.php')) {
            require_once './App/Controllers/' . $controllerName . '.php';
        }
        else {
            Route::errorPage404();
        }

        //префікси...
        $modelName = '\\App\\Models\\'.$controllerName;
        $controllerName = '\\App\\Controllers\\'.$controllerName;
        $actionName = 'action'.$actionName;

        //робимо екземпляр класу контролер
        $controller = new $controllerName;
        $action = $actionName;

        //визвано дію контролера або тут теж можна виключення організувати
        method_exists($controller, $action) ? $controller->$action() : Route::errorPage404();
    }

}
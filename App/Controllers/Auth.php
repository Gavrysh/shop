<?php

namespace App\Controllers;

use Core\Controller;
use Core\Defaults;
use Core\Route;

class Auth extends Controller
{
    public function __construct()
    {
        $this->model = new \App\Models\Auth();
        parent::__construct();
    }

    public function actionIndex()
    {
        if (isset($_SESSION['user'])) {
            Route::errorPage404();
        } else {
            if (isset($_POST['login'], $_POST['email'], $_POST['password'])) {
                $data = $this->model->getData();
                $this->view->generate('Login.tpl', 'Template.tpl', $data);
            } else {
                $this->view->generate('Auth.tpl', 'Template.tpl');
            }
        }
    }
}
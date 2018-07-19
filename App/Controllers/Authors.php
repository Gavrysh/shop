<?php

namespace App\Controllers;

use Core\Controller;

class Authors extends Controller
{
    function __construct()
    {
        $this->model = new \App\Models\Authors();
        parent::__construct();
    }

    public function actionIndex()
    {
        //Выборка всех авторов
        $data = $this->model->getData();
        $this->view->generate('Authors.tpl', 'Template.tpl', $data);
    }
}
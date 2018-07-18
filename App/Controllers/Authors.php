<?php

namespace App\Controllers;

use Core\Controller;

class Authors extends Controller
{
    function __construct()
    {
        $this->model = new Model_authors();
        $this->view = new View();
    }

    public function action_index()
    {
        //Выборка всех авторов
        $data = $this->model->get_data();
        $this->view->generate('Authors.tpl', 'Template.tpl', $data);
    }
}
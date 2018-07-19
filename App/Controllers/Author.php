<?php

namespace App\Controllers;

use Core\Controller;

class Author extends Controller
{
    function __construct()
    {
        $this->model = new \App\Models\Author();
        parent::__construct();
    }

    function actionShow()
    {
        //Показ страницы по отдельно-выбранному автору
        $id = $_REQUEST['id'];
        $data = $this->model->getId($id);
        $this->view->generate('Author.tpl', 'Template.tpl', $data);
    }
}
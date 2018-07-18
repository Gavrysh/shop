<?php

namespace App\Controllers;

use Core\Controller;

class Author extends Controller
{
    function __construct()
    {
        $this->model = new Model_author();
        $this->view = new View();
    }

    function action_show()
    {
        //Показ страницы по отдельно-выбранному автору
        $id = $_REQUEST['id'];
        $data = $this->model->get_id($id);
        $this->view->generate('Author.tpl', 'Template.tpl', $data);
    }
}
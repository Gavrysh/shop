<?php

namespace App\Controllers;

use Core\Controller;

class Product extends Controller
{
    function __construct()
    {
        $this->model = new \App\Models\Product();
        parent::__construct();
    }

    function action_show()
    {
        //Показ страницы отдельно-выбраной книги
        $id = $_REQUEST['id'];
        $data = $this->model->get_id($id);
        $this->view->generate('Product.tpl', 'Template.tpl', $data);
    }
}
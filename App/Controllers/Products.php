<?php

namespace App\Controllers;

use Core\Controller;

class Products extends Controller
{
    function __construct()
    {
        $this->model = new \App\Models\Products();
        parent::__construct();
    }

    function actionIndex()
    {
        //Выборка всех книг из каталога
        $data = $this->model->getData();
        $this->view->generate('Products.tpl', 'Template.tpl', $data);
    }

    function action_select()
    {
        //Выбор книги (отложить в корзину) - доработать

        $id = explode('/', $_SERVER['REQUEST_URI']);
        $this->actionIndex();
        $this->addGoods($id[3]);
    }

    function addGoods($id)
    {
        $_SESSION['goods']['id'] = $id;
    }
}
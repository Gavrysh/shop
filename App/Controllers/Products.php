<?php

namespace App\Controllers;

use Core\Controller;

class Products extends Controller
{
    public function __construct()
    {
        $this->model = new \App\Models\Products();
        parent::__construct();
    }

    public function actionIndex()
    {
        //Выборка всех книг из каталога
        $data = $this->model->getData();
        $this->view->generate('Products.tpl', 'Template.tpl', $data);
    }

    public function actionSelect()
    {
        //Выбор книги (отложить в корзину)
        $this->model->putBasket($_REQUEST['id']);
        $this->view->generate('Products.tpl', 'Template.tpl');
    }
}
<?php

namespace App\Controllers;

use Core\Controller;

class Product extends Controller
{
    public function __construct()
    {
        $this->model = new \App\Models\Product();
        parent::__construct();
    }

    public function actionShow()
    {
        //Показ страницы отдельно-выбраной книги
        $id = $_REQUEST['id'];
        $data = $this->model->getId($id);
        $this->view->generate('Product.tpl', 'Template.tpl', $data);
    }
    public function actionSelectProduct()
    {
        //Выбор книги (отложить в корзину)
        $this->model->putBasket($_REQUEST['id']);
        $this->actionShow();
    }
}
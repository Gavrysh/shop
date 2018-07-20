<?php

namespace App\Controllers;

use Core\Controller;
use Core\Defaults;

class Basket extends Controller
{
    public function __construct()
    {
        $this->model = new \App\Models\Basket();
        parent::__construct();
    }

    public function actionIndex()
    {
        //Сформировать таблицу
        $data = $this->model->makeBasket();
        $this->view->generate('Basket.tpl', 'Template.tpl', $data);
    }

    public function actionClearBasket()
    {
        unset($_SESSION['books']);
        $this->actionIndex();
    }

    public function actionRecountBasket()
    {
        Defaults::wtf($_SESSION,1);
    }
}
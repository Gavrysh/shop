<?php

namespace App\Controllers;

use Core\Controller;
use Core\Defaults;

class Basket extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->model = new \App\Models\Basket();
    }

    public function actionIndex()
    {
        //Сформировать таблицу если были выбраны товары
        $data = $this->actionMakingBasket();
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

    public function actionMakingBasket()
    {
        return $this->model->makeBasket();
    }
}
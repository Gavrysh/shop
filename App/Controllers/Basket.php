<?php

namespace App\Controllers;

use Core\Controller;

class Basket extends Controller
{
    public function actionIndex()
    {
        $this->view->generate('Basket.tpl', 'Template.tpl');
    }
}
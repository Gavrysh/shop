<?php

namespace App\Controllers;

use Core\Controller;

class Main extends Controller
{
    public function actionIndex()
    {
        $this->view->generate('Main.tpl', 'Template.tpl');
    }
}
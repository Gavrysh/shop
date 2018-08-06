<?php

namespace App\Controllers;

use Core\Controller;

class ErrorPage extends Controller
{
    public function actionIndex()
    {
        $this->view->generate('ErrorPage.tpl', 'Template.tpl');
    }
}

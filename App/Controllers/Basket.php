<?php

namespace App\Controllers;

use Core\Controller;

class Basket extends Controller
{
    public function action_index()
    {
        $this->view->generate('Basket.tpl', 'Template.tpl');
    }
}
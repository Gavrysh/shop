<?php

namespace App\Controllers;

use Core\Controller;

class Main extends Controller
{
    public function action_index()
    {
        $this->view->generate('Main.tpl', 'Template.tpl');
    }
}
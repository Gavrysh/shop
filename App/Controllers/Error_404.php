<?php

namespace App\Controllers;

use Core\Controller;

class Error_404 extends Controller
{
    public function action_index()
    {
        $this->view->generate('Error_404.tpl', 'Template.tpl');
    }
}

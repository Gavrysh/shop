<?php

namespace App\Controllers;

use Core\Controller;

class Products extends Controller
{
    function __construct()
    {
        $this->model = new Model_products();
        $this->view = new View();
    }

    function action_index()
    {
        //Выборка всех книг из каталога
        $data = $this->model->get_data();
        $this->view->generate('Products.tpl', 'Template.tpl', $data);
    }

    function action_select()
    {
        //Выбор книги (отложить в корзину) - доработать
        session_start();
        $id = explode('/', $_SERVER['REQUEST_URI']);
        $this->action_index();
        $this->add_goods($id[3]);
    }

    function add_goods($id)
    {
        $_SESSION['goods']['id'] = $id;
    }
}
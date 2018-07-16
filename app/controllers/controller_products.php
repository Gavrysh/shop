<?php
class controller_products extends controller
{
    function __construct()
    {
        $this->model = new Model_products();
        $this->view = new View();
    }

    function action_index()
    {
        $data = $this->model->get_data();
        $this->view->generate('products_view.tpl', 'template_view.tpl', 'footer_view.tpl', 'header_view.tpl', 'auth_view.tpl', $data);
    }

    function action_select()
    {
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
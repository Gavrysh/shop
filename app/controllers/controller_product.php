<?php
class controller_product extends controller
{
    function __construct()
    {
        $this->model = new Model_product();
        $this->view = new View();
    }

    function action_show()
    {
        $id = explode('/', $_SERVER['REQUEST_URI']);
        $data = $this->model->get_id($id[3]);
        $this->view->generate('product_view.tpl', 'template_view.tpl', 'footer_view.tpl', 'header_view.tpl', 'auth_view.tpl', $data);
    }
}
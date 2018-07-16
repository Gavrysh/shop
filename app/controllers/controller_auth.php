<?php
class controller_auth extends controller
{
    function __construct()
    {
        $this->model = new Model_auth();
        $this->view = new View();
    }

    function action_index()
    {
        $data = $this->model->get_data();
        $this->view->generate('auth_view.tpl', 'template_view.tpl', 'footer_view.tpl', 'header_view.tpl');
    }
}
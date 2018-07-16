<?php
class controller_author extends controller
{
    function __construct()
    {
        $this->model = new Model_author();
        $this->view = new View();
    }

    public function action_show()
    {
        $id = explode('/', $_SERVER['REQUEST_URI']);
        $data = $this->model->get_id($id[3]);
        $this->view->generate('author_view.tpl', 'template_view.tpl', 'footer_view.tpl', 'header_view.tpl', $data);
    }
}
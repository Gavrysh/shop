<?php
class controller_author extends controller
{
    function __construct()
    {
        $this->model = new Model_author();
        $this->view = new View();
    }

    function action_show()
    {
        //Показ страницы по отдельно-выбранному автору
        $id = $_REQUEST['id'];
        $data = $this->model->get_id($id);
        $this->view->generate('author_view.tpl', 'template_view.tpl', $data);
    }
}
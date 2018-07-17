<?php
class controller_authors extends controller
{
    function __construct()
    {
        $this->model = new Model_authors();
        $this->view = new View();
    }

    public function action_index()
    {
        //Выборка всех авторов
        $data = $this->model->get_data();
        $this->view->generate('authors_view.tpl', 'template_view.tpl', $data);
    }
}
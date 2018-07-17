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
        //Показ страницы отдельно-выбраной книги
        $id = $_REQUEST['id'];
        $data = $this->model->get_id($id);
        $this->view->generate('product_view.tpl', 'template_view.tpl', $data);
    }
}
<?php
class controller_main extends controller
{
    public function action_index()
    {
        $this->view->generate('main_view.tpl', 'template_view.tpl', 'footer_view.tpl', 'header_view.tpl', 'auth_view.tpl');
    }
}
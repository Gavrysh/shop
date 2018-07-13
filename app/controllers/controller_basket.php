<?php
class controller_basket extends controller
{
    public function action_index()
    {
        $this->view->generate('basket_view.tpl', 'template_view.tpl', 'footer_view.tpl', 'header_view.tpl', 'auth_view.tpl');
    }
}
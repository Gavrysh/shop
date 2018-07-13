<?php
class controller_products extends controller
{
    public function action_index()
    {
        $this->view->generate('products_view.tpl', 'template_view.tpl', 'footer_view.tpl', 'header_view.tpl', 'auth_view.tpl');
    }
}
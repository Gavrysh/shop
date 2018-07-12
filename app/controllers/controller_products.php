<?php
class controller_products extends controller
{
    public function action_index()
    {
        $this->view->generate('products_view.tpl', 'template_view.tpl');
    }
}
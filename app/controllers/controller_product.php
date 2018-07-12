<?php
class controller_product extends controller
{
    public function action_index()
    {
        $this->view->generate('product_view.tpl', 'template_view.tpl');
    }
}
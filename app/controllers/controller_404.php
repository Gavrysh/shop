<?php
class controller_404 extends controller
{
    public function action_index()
    {
        $this->view->generate('404_view.tpl', 'template_view.tpl', 'footer_view.tpl', 'header_view.tpl', 'auth_view.tpl');
    }
}

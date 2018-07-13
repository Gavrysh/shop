<?php
class controller_author extends controller
{
    public function action_index()
    {
        $this->view->generate('author_view.tpl', 'template_view.tpl');
    }
}
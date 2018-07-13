<?php
class controller_authors extends controller
{
    public function action_index()
    {
        $this->view->generate('authors_view.tpl', 'template_view.tpl');
    }
}
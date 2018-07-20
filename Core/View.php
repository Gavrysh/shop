<?php

namespace Core;

class View
{

    function generate($content_view, $template_view, $data = null)
    {
        include './App/Views/'.$template_view;
    }
}
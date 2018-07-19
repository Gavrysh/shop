<?php

namespace Core;

class View
{
    //public $template_view; // здесь можно указать общий вид по умолчанию.

    function generate($content_view, $template_view, $data = null)
    {
        include './App/Views/'.$template_view;
    }
}
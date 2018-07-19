<?php

namespace App\Controllers;

class Logout
{
    public function __construct()
    {
        session_unset();
        session_destroy();
        header("Location: /");
        exit();
    }
}
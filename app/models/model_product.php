<?php
class Model_product extends Model
{
    public function get_data()
    {
        $db = require_once './app/data/db.php';
        return $db;
    }
}
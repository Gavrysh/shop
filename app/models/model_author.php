<?php
class Model_author extends Model
{
    public function get_id($id)
    {
        $db = require_once './app/data/db.php';
        return $db[$id];
    }
}
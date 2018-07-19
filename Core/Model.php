<?php

namespace Core;

class Model
{
    public $tableName;
    public $queryString;

    public function get_data()
    {
        $res = Defaults::q("
            SELECT * FROM $this->tableName
        ");

        while ($row = mysqli_fetch_assoc($res)) {
            $output[] = $row;
        }

        return $output;
    }

    public function get_id($id)
    {
        $res = Defaults::q("
            $this->queryString $id
        ");

        while ($row = mysqli_fetch_assoc($res)) {
            $output[] = $row;
        }

        return $output;
    }
}
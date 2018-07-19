<?php

namespace Core;

class Model
{
    public $tableName;
    public $queryString;

    public function getData()
    {
        $res = Defaults::q("
            SELECT * FROM $this->tableName
        ");

        while ($row = mysqli_fetch_assoc($res)) {
            $output[] = $row;
        }

        return $output;
    }

    public function getId($id)
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
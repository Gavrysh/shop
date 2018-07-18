<?php
class Model
{
    public $tableName;
    public $queryString;

    public function get_data()
    {
        $res = q("
            SELECT * FROM $this->tableName
        ");

        while ($row = mysqli_fetch_assoc($res)) {
            $output[] = $row;
        }

        return $output;
    }

    public function get_id($id)
    {
        $res = q("
            $this->queryString $id
        ");

        while ($row = mysqli_fetch_assoc($res)) {
            $output[] = $row;
        }

        return $output;
    }
}
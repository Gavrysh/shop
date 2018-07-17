<?php
class Model
{
    public $tableName;

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

}
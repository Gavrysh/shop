<?php
function calc($val1, $val2)
{
    if (!$val2) {
        throw new Exception('Devision by null');
    }
    return $val1/$val2;
}
if (isset($_GET['calc'])) {
    try {
        //$result_add = $_GET['val1'] + $_GET['val2'];
        //$result_sub = $_GET['val1'] - $_GET['val2'];
        //$result_mult = $_GET['val1'] * $_GET['val2'];
        $result_div = calc($_GET['val1'], $_GET['val2']);
    } catch (Exception $e) {
        echo $e->getMessage();
        $errors[] = $e->getMessage();
    }

}
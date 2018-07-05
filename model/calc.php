<?php
if (isset($_GET['calc'])) {
    try {
        $result_add = $_GET['val1'] + $_GET['val2'];
        $result_sub = $_GET['val1'] - $_GET['val2'];
        $result_mult = $_GET['val1'] * $_GET['val2'];
        $result_div = $_GET['val1'] / $_GET['val2'];
    } catch (DivisionByZeroError $e) {
        echo $e->getMessage();
        $errors[] = $e->getMessage();
    }

}
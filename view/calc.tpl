<h3>Calc</h3>
<form action="/index.php" method="get">
    <label>First number<input type="text" name="val1"></label>
    <label>Second number<input type="text" name="val2"></label>
    <input type="submit" name="calc" value="Calc numbers">
</form>
<?php
    if (isset($errors)) {
        foreach ($errors as $val) {
            echo $val;
        }
    }
?>
<?php

function wtf($array, $load = 0) {
    echo '<pre>';
    print_r($array);
    echo '</pre>';
    if (!$load) {
        exit;
    }
}

// Функція оболонка від mysqli_query з розширеним функціоналом,
// меншою кількістю вхідних параметрів, логіюванням у окремий файл
function q($query)
{
    global $link;
    $res = mysqli_query($link, $query);
    if($res === false) {
        $info = debug_backtrace();
        $error_log = strip_tags("Дата/час - ".date('d:m:y - H:i:s')."<br>\n"."Помилка у файлі - ".$info[0]['file']."<br>\n"."Рядок - ".$info[0]['line']."<br>\n"."Запит - ").htmlspecialchars($query).strip_tags("<br>\n"."Помилка mysqli - ".mysqli_error($link)."<br>\n");
        echo "Дата/час - ".date('d:m:y - H:i:s')."<br>\n"."Помилка у файлі - ".$info[0]['file']."<br>\n"."Рядок - ".$info[0]['line']."<br>\n"."Запит - ".htmlspecialchars($query)."<br>\n"."Помилка mysqli - ".mysqli_error($link)."<br>\n";
        file_put_contents('./logs/mysql.log', htmlspecialchars_decode($error_log)."\n\n", FILE_APPEND);
        exit();
    } else {
        return $res;
    }
}

// Екранує спец. символи для SQL-виразів
// (працює з вкладеним масивом рекурсійно)
function es($el) {
    global $link;
    if(is_array($el)) {
        $el = array_map(res, $el);
    } else {
        $el = mysqli_real_escape_string($link, $el);
    }
    return $el;
}

// Преобразує спец.символи до HTML-сутністі
// (працює з вкладеним масивом рекурсійно)
function hs($el) {
    if(is_array($el)) {
        $el = array_map(hs, $el);
    } else {
        $el = htmlspecialchars($el);
    }
    return $el;
}
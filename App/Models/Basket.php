<?php

namespace App\Models;

use Core\Defaults;
use Core\Model;

class Basket extends Model
{
    public function makeBasket()
    {
        if (isset($_SESSION['books'])) {
            //Сгенерировать массив
            return $this->genDataForBasket();
        } else {
            //Ничего не делать
        }
    }

    public function genDataForBasket()
    {
        $basket = [];
        //Группировка книг
        foreach ($_SESSION['books'] as $val) {
            if (key_exists($val, $basket)) {
                ++$basket[$val];
            } else {
                $basket[$val] = 1;
            }
        }

        //Выборка из базы
        $res = Defaults::q("
            SELECT `id`, `name`, `price`
            FROM `books`
            WHERE `id` IN (".implode(',', array_unique($_SESSION['books'], SORT_NUMERIC)).")
        ");

        //Формирование таблицы с ценами
        while ($row = mysqli_fetch_assoc($res)) {
            $output[] = $row;
        }

        foreach ($basket as $key => $val) {
            if ($val > 1) {
                $i = 0;
                foreach ($output as $tey => $wal) {
                    if ($output[$i]['id'] == $key) {
                        $output[$i]['price'] = $output[$i]['price'] * $val;
                    }
                    ++$i;
                }
            }
        }

        return $output;
    }
}
<?php

namespace App\Models;

use Core\Defaults;
use Core\Model;

class Auth extends Model
{
    public $errors = [];

    public function get_data()
    {
        //Коннект с базой и возврат данных по пользователю
        //если нет данных по пользователю - регистрация нового пользователя
        //Проверка на корректность ввода
        session_start();
        if ($this->validInput($_POST['email'], $_POST['password'])) {
            if ($this->searchUser($_POST['email'], $_POST['password'])) {
                return $this->errors;
            } else {
                if ($this->registerUser($_POST['email'], $_POST['password'])) {
                    $this->searchUser($_POST['email'], $_POST['password']);
                    return $this->errors;
                } else {
                    $this->errors['get_data'] = 'Пользователь не поддается аутентификации!';
                }
            }
        } else {
            return $this->errors;
        }
    }

    public function validInput($email, $pass)
    {
        //TODO: Можно доработать на предмет ввода некорректных символов
        if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $this->errors['email'] = 'Необходимо корректно заполнить email адрес.';
        }
        if (mb_strlen($pass) < 6) {
            $this->errors['password'] = 'Пароль слишком короткий (от 6-ти до 32-х символов).';
        } elseif (mb_strlen($pass) > 32) {
            $this->errors['password'] = 'Пароль слишком длинный (от 6-ти до 32-х символов).';
        }

        return !count($this->errors) ? true : false;
    }

    public function searchUser($email, $pass)
    {
        $res = Defaults::q("
            SELECT *
            FROM `users`
            WHERE `email`  = '".Defaults::es($email)."'
            AND `password` = '".Defaults::es(Defaults::myHash($pass))."'
            LIMIT 1
        ");

        if (mysqli_num_rows($res)) {
            $_SESSION['user'] = mysqli_fetch_assoc($res);
            return true;
        } else {
            return false;
        }
    }

    public function validateUser($email)
    {
        $res = Defaults::q("
            SELECT *
            FROM `users`
            WHERE `email`  = '".Defaults::es($email)."'
        ");

        return mysqli_num_rows($res) ? true : false;
    }

    public function registerUser($email, $pass)
    {
        if ($this->validateUser($email)) {
            $this->errors['registerUser'] = 'Пользователь с таким email уже зарегистрирован. Выберите, пожалуйста другой email.';
            return false;
        } else {
            Defaults::q("
                INSERT INTO `users` SET
                `name`     = '".Defaults::es($email)."',
                `email`    = '".Defaults::es($email)."',
                `password` = '".Defaults::es(Defaults::myHash($pass))."'
            ");
            return true;
        }
    }
}
<?php
class Model_auth extends Model
{
    public function get_data()
    {
        //Коннект с базой и возврат данных по пользователю
        //если нет данных по пользователю - регистрация нового пользователя
        //Проверка на корректность ввода
        $errors = [];
        if (empty($_POST['email']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $errors['email'] = 'Необходимо корректно заполнить email адрес.';
        }
        if (mb_strlen($_POST['password']) < 6) {
            $errors['password'] = 'Пароль слишком короткий (от 6-ти до 32-х символов).';
        } elseif (mb_strlen($_POST['password']) > 32) {
            $errors['password'] = 'Пароль слишком длинный (от 6-ти до 32-х символов).';
        }
        if (!count($errors)) {
            //Попытка найти пользователя с таким логином и паролем в БД
            $res = q("
                SELECT `id`
                FROM `users`
                WHERE `email` = '".es($_POST['email'])."'
            ");
            $row = mysqli_fetch_assoc($res);

            if (mysqli_num_rows($res)) {
                echo 'HI';
                return 'Совпадение!';
            } else {
                echo 'Hooo';
            }
        }
    }
}
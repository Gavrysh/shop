<?php

namespace Core;

use Couchbase\Exception;

class Sessions
{
    protected $name;
    protected $id;
    protected $path;

    public function __construct()
    {
        $this->name = session_name();
        $this->id = session_id();
        $this->path = session_save_path();
    }

    //Старт сессии
    public function start()
    {
        if (!$this->sessionExist()) {
            if (!session_start()) {
                throw new \Exception('Ошибка создания сессии.');
            }
            //$_SESSION['user'] = $_SERVER['HTTP_USER_AGENT'];
            //$_SESSION['r_addr'] = $_SERVER['REMOTE_ADDR'];
        }
    }

    //Уничножение сессии
    public function destroy()
    {
        if (isset($_COOKIE[session_name($this->name)]) || $this->sessionExist()) {
            session_unset();
            session_destroy();
        }
    }

    //Проверка наявности сессии
    public function sessionExist()
    {
        return PHP_SESSION_ACTIVE === session_status();
    }

    //Взять имя сессии
    public function getName()
    {
        return $this->name;
    }

    //Установить имя сессии
    public function setName($name)
    {
        if ($this->sessionExist()) {
            throw new \Exception('Установить новое имя сессии не удалось. Сессия уже создана!');
        }
        $this->name = $name;
        session_name($name);
    }

    //Взять идентификатор сессии
    public function getId()
    {
        return $this->id;
    }

    //Установить идентификатор сессии
    public function setId($id)
    {
        if (session_id($id)) {
            throw new \Exception('Установить идентификатор сессии не удалось.');
        }
    }

    //Взять путь где хранятся идентификаторьі сессии
    public function getSavePath()
    {
        return $this->path;
    }

    public function setSavePath($path)
    {
        if ($this->sessionExist()) {
            throw new \Exception('Установить новьій путь для сохранения сессии не удалось. Сессия уже создана!');
        } elseif (!is_dir($path)) {
            throw new \Exception('Указанная директория: '.$path.' - отсутствует!');
        } elseif (!is_writable($path)) {
            throw new \Exception('Указанная директория: '.$path.' - не доступна для записи!');
        }
        $this->path = $path;
        session_save_path($path);
    }

    //Проверка наличия 'печенек'
    public function cookieExist($key)
    {
        return $_COOKIE[$key] ?? false;
    }

    //Взять все значение массива $_SESSION
    public function getValue()
    {
        return $_SESSION;
    }

    //Установить значение массива $_SESSION
    public function setValue($key, $value)
    {
        $_SESSION[$key] = $value;
    }

    //Проверить наличие ключа в массиве $_SESSION
    public function containsValue($key)
    {
        return key_exists($key, $_SESSION) ? true : false;
    }

    //Удалить переменную из массива $_SESSION
    public function deleteValue($key)
    {
        if (!key_exists($key, $_SESSION)) {
            throw new \Exception('Ключ '.$key.' в массиве $_SESSION отсутствует. Операция не вьіполнена!');
        }
        unset($_SESSION[$key]);
    }
}
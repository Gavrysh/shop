<?php
/**
 * Created by PhpStorm.
 * User: gases
 * Date: 04.08.18
 * Time: 14:14
 */

namespace Core;

use Config\Data;

class ErrorHandler
{
    private $path;
    private $errorNo;
    private $errorStr;
    private $errorFile;
    private $errorLine;

    public function __construct()
    {
        $this->path = Data::$log_dir.Data::$log_file;
        if (!file_exists($this->path)) {
            fopen($this->path, 'w');
        }
    }

    public function registerError()
    {
        set_error_handler([$this, 'myErrorHandler']);
        register_shutdown_function([$this, 'shutdownError']);
        set_exception_handler([$this, 'exceptionHandler']);
    }

    public function myErrorHandler($errorNo, $errorStr, $errorFile, $errorLine)
    {
        $this->showError($errorNo, $errorStr, $errorFile, $errorLine);

        return true;
    }

    public function shutdownError()
    {
        $errorInfo = error_get_last();
        if (is_array($errorInfo) && in_array($errorInfo['type'], [E_ERROR, E_PARSE, E_CORE_ERROR, E_COMPILE_ERROR])) {
            while (ob_get_level()) {
                ob_get_clean();
            }
            $this->showError($errorInfo['type'], $errorInfo['message'], $errorInfo['file'], $errorInfo['line']);
        }

        return false;
    }

    public function exceptionHandler(\Exception $e)
    {
        $this->showError(get_class($e), $e->getMessage(), $e->getFile(), $e->getLine());

        return false;
    }

    private function showError($errorNo, $errorStr, $errorFile, $errorLine, $status = 500)
    {
        header('HTTP/1.1 '.$status);
        $text = nl2br("<h2>Сервер находится на техническом обслуживании.\nЗайдите, пожалуйста, позже.</h2>\n");
        $text .= nl2br("Номер ошибки: {$errorNo}\n");
        $text .= nl2br("Сообщение: {$errorStr}\n");
        $text .= nl2br("Файл: {$errorFile}\n");
        $text .= nl2br("Строка: {$errorLine}\n");
        $this->setVariables($errorNo, $errorStr, $errorFile, $errorLine);
        $this->writeLog($text);
    }

    private function getLogPath()
    {
        return $this->path;
    }

    private function setVariables($errorNo, $errorStr, $errorFile, $errorLine)
    {
        $this->errorNo = $errorNo;
        $this->errorStr = $errorStr;
        $this->errorFile = $errorFile;
        $this->errorLine = $errorLine;
    }

    private function writeLog($text)
    {
        $lines = file($this->errorFile);

        $errorText = $text.$this->errorLine.' '.htmlspecialchars($lines[$this->errorLine - 1])."\n";
        file_put_contents($this->path, $errorText, FILE_APPEND | LOCK_EX);
    }

    private function sendLog()
    {
        //send e-mail class Mail
    }
}
<?php
// composer autoloader
//require_once 'vendor/autoload.php';
// Shortcuts for simpler usage
use \Monolog\Logger;
use \Monolog\Formatter\LineFormatter;
use \Monolog\Handler\StreamHandler;

// Common logger
$log = new Logger('files');

// Line formatter without empty brackets in the end
$formatter = new LineFormatter(null, null, false, true);

// Debug level handler
$debugHandler = new StreamHandler('logs/debug.log', Logger::DEBUG);
$debugHandler->setFormatter($formatter);

// Error level handler
$errorHandler = new StreamHandler('logs/error.log', Logger::ERROR);
$errorHandler->setFormatter($formatter);

// This will have both DEBUG and ERROR messages
$log->pushHandler($debugHandler);

// This will have only ERROR messages
$log->pushHandler($errorHandler);

// The actual logging
$log->debug('I am debug');
$log->error('I am error', array('productId' => 123));
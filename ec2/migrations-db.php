<?php
require_once './data/config/config.php';

return [
    'dbname' => DB_NAME,
    'user' => DB_USER,
    'password' => DB_PASSWORD,
    'host' => DB_SERVER,
    'driver' => 'pdo_mysql'
];

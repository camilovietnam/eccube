<?php
require_once './data/config/config.php';

return [
    'dbname' => DB_NAME,
    'host' => DB_SERVER,
    'user' => DB_USER,
    'password' => DB_PASSWORD,
    'driver' => 'pdo_mysql'
];

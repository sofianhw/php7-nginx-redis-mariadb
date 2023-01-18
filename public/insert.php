<?php

$redis = new Redis();
$redis->connect('redis', 6379);
$redis->auth('secret');

$database_name     = 'test_store';
$database_user     = 'root';
$database_password = 'root';
$mysql_host        = 'db';

$key = 'PRODUCTS';
    
$pdo = new PDO('mysql:host=' . $mysql_host . '; dbname=' . $database_name, $database_user, $database_password);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$sql  = "INSERT INTO products(product_name, price) VALUES (\"Domain\", \"6.00\");";
$stmt = $pdo->prepare($sql);
$stmt->execute();

$redis->delete($key);

echo 'Insert New Key - Invalidate Cache';
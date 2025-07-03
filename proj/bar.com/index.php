<?php
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'bar_db';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $stmt = $pdo->prepare("SELECT message FROM hello_world WHERE id = 1");
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if ($result) {
        echo $result['message'];
    } else {
        echo "No records found";
    }
} catch (PDOException $e) {
    echo "Database connection failed: " . $e->getMessage();
}
?>
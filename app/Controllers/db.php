<?php
$conn= new mysqli("localhost:3306", 'root', 'Eroclaz1000', 'PickMe');
if($conn->connect_errno){
    echo json_encode(['status' => $conn->connect_error]);
    exit();
}
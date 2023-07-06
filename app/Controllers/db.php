<?php
$conn= new mysqli("localhost:3306", 'root', '', 'PickMe');
if($conn->connect_errno){
    echo json_encode(['status' => $conn->connect_error]);
    exit();
}
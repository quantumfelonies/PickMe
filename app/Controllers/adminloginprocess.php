<?php
class AdminLogin {
    public function index() {
        echo 'yaaayy';
    }
}

// require("db.php");

// if(isset($_POST['login'])){
//     $email = $_POST['email'];
//     $password = $_POST['password'];

//     $sql = "SELECT * FROM tbl_user WHERE role_id = '1' AND
//     `email` ='$email' AND `password` ='$password'";

//     $result = mysqli_query($conn, $sql);

//     if($row = mysqli_fetch_assoc($result)){
//         $password = $row['password'];
//         $_SESSION['email'] = $email;
//         header("location: adminhome.php");
//     }
//     else{
//         header("location:adminlogin.php?&&&incorrect details");
//     }
// }



?>

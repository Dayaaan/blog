<?php 
session_start();
include '../services/blogServices.php';
include '../services/tools.php';


$email = $_POST['email'];
$password = $_POST['password'];


$author = processLogin($email,$password);

if ($author == null) {
    echo "L'utilisateur $email n'existe pas et/ou le mot de passe n'est pas bon";

} else {
		
        $_SESSION['id'] = $author['id'];



       header("Location:admin.php");
}
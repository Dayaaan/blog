<?php 
include '../services/blogServices.php';
include '../services/tools.php';


if (count($_POST) == 0) {
	die('Veuillez remplir les champs');
}

$title = $_POST["title"];
$content = $_POST["content"];
$author = $_POST["author"];
$category = $_POST['category'];

createArticle($title,$content,$author,$category);
header("Location:article.php");
exit;
<?php 
session_start();
include 'isConnected.php';
include '../services/blogServices.php';
include '../services/tools.php';



if ( empty($_POST["title"]) || empty($_POST["content"]) ) {

	die('Veuillez remplir les champs');

} else {

	$title = $_POST["title"];

	$content = $_POST["content"]; 

	$author_id = $_POST["author"];

	$category_id = $_POST['category'];

	createArticle($author_id, $title, $content, $category_id);

	header("Location:article.php");
	exit;
}


<?php 
include '../services/blogServices.php';
include '../services/tools.php';


if ( empty($_POST["title"]) || empty($_POST["content"]) ) {

	die('Veuillez remplir les champs');

} else {

	$title = clean_text($_POST["title"]);

	$content = clean_text($_POST["content"]); 

	$author_id = $_POST["author"];

	$category_id = $_POST['category'];

	createArticle($author_id, $title, $content, $category_id);

	header("Location:article.php");
	exit;
}


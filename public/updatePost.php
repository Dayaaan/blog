<?php 
session_start();
include 'isConnected.php';
include '../services/blogServices.php';
include '../services/tools.php';



if (isset($_POST["submit"])) {

	$id_article = $_POST["id_article"];

	$title = clean_text($_POST["title"]);

	$content = clean_text($_POST["content"]); 

	$author_id = $_POST["author"];

	$category_id = $_POST['category'];

	updatePost($id_article,$author_id, $title, $content, $category_id);

	header("Location:admin.php");
	exit;
}
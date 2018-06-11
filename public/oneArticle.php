<?php
session_start();

include '../services/blogServices.php';
include '../services/tools.php';
include '../views/header.phtml';

$id = $_GET['id'];
$article = getArticleById($id);

$commentList = getCommentListByArticleID($id);


if(isset($_POST['submit'])) {
	if ( empty($_POST["pseudo"]) || empty($_POST["content"]) ) {

		die('Veuillez remplir les champs');

	} else {

		$pseudo = $_POST["pseudo"];

		$content = $_POST["content"]; 

		$article_id = $id;

		createComment($pseudo,$content,$article_id);

		$commentList = getCommentListByArticleID($id);

	}
}


include '../views/oneArticle.phtml';




include '../views/footer.phtml';
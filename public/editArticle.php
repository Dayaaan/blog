<?php
session_start();
include 'isConnected.php';
include '../services/blogServices.php';
include '../services/tools.php';

include '../views/header.phtml';

$id = $_GET['id'];
$article = getArticleById($id);
$authorList = getAuthorList();
$author = getAuthorById($id);
$categoryList = getCategoryList();








include '../views/editArticle.phtml';




include '../views/footer.phtml';
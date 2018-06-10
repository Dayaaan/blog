<?php
include '../services/blogServices.php';
include '../services/tools.php';
include '../views/header.phtml';

$id = $_GET['id'];
$articleById = getArticleById($id);
$authorList = getAuthorList();









include '../views/editArticle.phtml';




include '../views/footer.phtml';
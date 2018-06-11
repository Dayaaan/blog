<?php 
session_start();

include '../services/blogServices.php';
include '../services/tools.php';
include '../views/header.phtml';


$articleList = getArticleList();

include '../views/article.phtml';




include '../views/footer.phtml';
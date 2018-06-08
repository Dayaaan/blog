<?php 

include '../services/blogServices.php';
include '../services/tools.php';
include '../views/header.phtml';

$articleList = getArticleList();
include '../views/admin.phtml';




include '../views/footer.phtml';
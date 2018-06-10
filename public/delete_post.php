<?php 
include '../services/blogServices.php';
include '../services/tools.php';

$id = $_GET['id'];
deleteArticle($id);
header("Location:admin.php");
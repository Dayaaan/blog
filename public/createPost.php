<?php 
session_start();
include 'isConnected.php';
include '../services/blogServices.php';
include '../services/tools.php';

include '../views/header.phtml';

$authorList = getAuthorList();
include '../views/createPost.phtml';




include '../views/footer.phtml';
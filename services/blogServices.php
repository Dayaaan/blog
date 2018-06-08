<?php 

function getConnection() {
	$bdd = new PDO('mysql:host=localhost;dbname=blog;charset=utf8', 'root', 'troiswa', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	$bdd->exec('SET NAMES UTF8');
	return $bdd;
}


function createArticle($author_id,$created_at,$update_at,$title,$content,$category_id) {
	$bdd = getConnection();
	$statement = $bdd->prepare("INSERT INTO article (author_id,created_at,update_at,title,content, category_id) VALUES ('$author_id', '$created_at', '$update_at','$title','$content','$category_id')");
	$statement->execute();
}

function getArticleList() {
	$bdd = getConnection();
	$statement = $bdd->prepare('
		
		SELECT article.id, author.firstname AS author_firstname, author.lastname AS author_lastname,created_at,update_at,title,content,category.name AS category_name  
		FROM article 
		JOIN author ON author.id = article.author_id 
		JOIN category ON category.id = article.category_id

		');
	$statement->execute();
	$articleList = $statement->fetchAll(PDO::FETCH_ASSOC);
	return $articleList;
}

function deleteArticle($id) {
	$bdd = getConnection();
	$statement = $bdd->prepare("DELETE FROM article WHERE id = $id");
	$statement->execute();
}
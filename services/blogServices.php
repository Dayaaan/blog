<?php 

function getConnection() {
	$bdd = new PDO('mysql:host=localhost;dbname=blog;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	$bdd->exec('SET NAMES UTF8');
	return $bdd;
}


function createArticle($author_id, $title, $content, $category_id) {
	$bdd = getConnection();
	$date = date('Y-m-d H:i:s');
	$statement = $bdd->prepare("
		INSERT INTO article (author_id, created_at, update_at, title, content, category_id) 
		VALUES ('$author_id', '$date', '$date', '$title', '$content', '$category_id')
		
		");
	$statement->execute();
}

function updatePost($id_article,$author_id, $title, $content, $category_id) {
	$bdd = getConnection();
	$date = date('Y-m-d H:i:s');
	$statement = $bdd->prepare("
		UPDATE article 
		SET author_id = '$author_id', title = '$title', content = '$content', category_id = '$category_id', update_at = '$date'
		WHERE id LIKE '$id_article'
		");
	$statement->execute();
}

function createComment($pseudo,$content,$article_id) {
	$bdd = getConnection();
	$date = date('Y-m-d H:i:s');
	$statement = $bdd->prepare("
		INSERT INTO comment (created_at, pseudo, content, article_id) 
		VALUES ('$date', '$pseudo', '$content', '$article_id')
		
		");
	$statement->execute();
}

function getArticleList() {
	$bdd = getConnection();
	$statement = $bdd->prepare('
		
		SELECT article.id, author.id AS author_id, author.firstname AS author_firstname, author.lastname AS author_lastname,created_at,update_at,title,content,category.name AS category_name,category.id AS category_id  
		FROM article 
		JOIN author ON author.id = article.author_id 
		JOIN category ON category.id = article.category_id

		');
	$statement->execute();
	$articleList = $statement->fetchAll(PDO::FETCH_ASSOC);
	return $articleList;
}

function getCommentListByArticleID($id) {
	$bdd = getConnection();
	$statement = $bdd->prepare("
		
		SELECT created_at, pseudo, content, article_id
		FROM comment
		WHERE article_id LIKE '$id'
		ORDER BY created_at DESC
		");
	$statement->execute();
	$commentListByArticleById = $statement->fetchAll(PDO::FETCH_ASSOC);
	return $commentListByArticleById;
}

function getArticleById($id) {
	$bdd = getConnection();
	$statement = $bdd->prepare("
		
		SELECT article.id,title,content,created_at,author.id AS author_id,author.firstname AS author_firstname, author.lastname AS author_lastname
		FROM article
		JOIN author ON author.id = article.author_id
		WHERE article.id LIKE '$id'
		");
	$statement->execute();
	$articleById = $statement->fetchAll(PDO::FETCH_ASSOC);
	return $articleById;
}

function getAuthorList() {
	$bdd = getConnection();
	$statement = $bdd->prepare('
		SELECT *
		FROM author ');
	$statement->execute();
	$authorList = $statement->fetchAll(PDO::FETCH_ASSOC);
	return $authorList;
}

function deleteArticle($id) {
	$bdd = getConnection();
	$statement = $bdd->prepare("DELETE FROM article WHERE id = $id");
	$statement->execute();
}
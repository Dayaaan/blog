<?php 


function getConnection() {
	$bdd = new PDO('mysql:host=localhost;dbname=blog;charset=utf8', 'root', 'troiswa', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	$bdd->exec('SET NAMES UTF8');
	return $bdd;
}


function createArticle($author_id, $title, $content, $category_id) {
	$articleList = [$author_id, $title, $content, $category_id];
	writeLog($articleList);
	$bdd = getConnection();
	$date = date('Y-m-d H:i:s');
	$statement = $bdd->prepare("
		INSERT INTO article (author_id, created_at, update_at, title, content, category_id) 
		VALUES (?, ?, ?, ?, ?, ?)
		
		");
	$statement->execute([$author_id, $date, $date, $title, $content, $category_id]);
}

function updatePost($id_article,$author_id, $title, $content, $category_id) {
	$bdd = getConnection();
	$date = date('Y-m-d H:i:s');
	$statement = $bdd->prepare("
		UPDATE article 
		SET author_id = ?, title = ?, content = ?, category_id = ?, update_at = ?
		WHERE id LIKE '$id_article'
		");
	$statement->execute([$author_id,$title,$content,$category_id,$date]);
}

function createComment($pseudo,$content,$article_id) {
	$bdd = getConnection();
	$date = date('Y-m-d H:i:s');
	$statement = $bdd->prepare("
		INSERT INTO comment (created_at, pseudo, content, article_id) 
		VALUES (?, ?, ?, ?)
		
		");
	$statement->execute([$date,$pseudo,$content,$article_id]);
}

function getArticleList() {
	$bdd = getConnection();
	$statement = $bdd->prepare('
		
		SELECT article.id, author.id AS author_id, author.firstname AS author_firstname, author.lastname AS author_lastname,created_at,update_at,title,content,category.name AS category_name,category.id AS category_id  
		FROM article 
		JOIN author ON author.id = article.author_id 
		JOIN category ON category.id = article.category_id
		ORDER BY update_at DESC
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
	$commentList = $statement->fetchAll(PDO::FETCH_ASSOC);
	return $commentList;
}

function getArticleById($id) {
	$bdd = getConnection();
	$statement = $bdd->prepare("
		
		SELECT article.id,title,content,created_at,author.id AS author_id,author.firstname AS author_firstname, author.lastname AS author_lastname, category_id
		FROM article
		JOIN author ON author.id = article.author_id
		WHERE article.id LIKE ?
		");
	$statement->execute([$id]);
	$article = $statement->fetch(PDO::FETCH_ASSOC);
	return $article;
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

function getAuthorById($id) {
	$bdd = getConnection();
	$statement = $bdd->prepare("

		SELECT author.id, firstname, lastname
		FROM author
		JOIN article ON article.author_id = author.id
		WHERE author.id LIKE '$id'
		");
	$statement->execute();
	$author = $statement->fetch(PDO::FETCH_ASSOC);
	return $author;
}

function deleteArticle($id) {
	$bdd = getConnection();
	$statement = $bdd->prepare("DELETE FROM article WHERE id = ?");
	$statement->execute([$id]);
}

function getCategoryList() {
	$bdd = getConnection();
	$statement = $bdd->prepare("
			SELECT *
			FROM category 
		");
	$statement->execute();
	$categoryList = $statement->fetchAll(PDO::FETCH_ASSOC);
	return $categoryList;
}

function processLogin($email,$password) {
	$bdd = getConnection();
	$statement = $bdd->prepare("
		SELECT *
		FROM author 
		WHERE email LIKE '$email' 
		AND password LIKE '$password'
		");
	$statement->execute();
	$author = $statement->fetch(PDO::FETCH_ASSOC);
	return $author;
}

function getUserById() {
	$id = $_SESSION['id'];
	$user = getAuthorById($id);
	$user_name = $user['firstname'] . " " . $user['lastname'];
	return $user_name;
}


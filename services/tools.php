<?php

function pre($thing) {
	echo "<pre>";
	print_r($thing);
	echo "</pre>";
} 

/*function mysql_escape_string($string) {
    return str_replace('\'', '\'\'', $string);
}*/

function clean_text($string) {
	$string = strip_tags($string); //enlever les balises html
	$string = trim($string);
	$string = htmlentities($string); 
	return $string;
}


function writeLog($thing) {
	if (is_array($thing)) {
		$thing = print_r($thing, true);
	}
	file_put_contents('../logs/log', PHP_EOL . date('Y-m-d H:i:s') . " " . $thing, FILE_APPEND);
}
//PHP_EOL : retour a la ligne

// function myGet($key) {
// 	if (isset($_GET[$key]) == false)  {
// 		return null;
// 	}
// 	return $_GET[$key];
// }
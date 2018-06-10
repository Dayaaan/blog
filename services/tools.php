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
	$string = trim($string);
	$string = stripslashes($string);
	$string = htmlspecialchars($string); 
	$string = htmlentities($string);
	$string = addslashes($string);
	return $string;
}
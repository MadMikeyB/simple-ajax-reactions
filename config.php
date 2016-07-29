<?php

require 'env.php';

$config = [
	'dbname'	=> getenv('dbname'),
	'dbuser'	=> getenv('dbuser'),
	'dbpass'	=> getenv('dbpass'),
	'dbhost'	=> getenv('dbhost'),
];


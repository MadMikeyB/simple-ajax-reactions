<?php

require 'config.php';
require 'database.php';

$db = new DB(getenv('dbhost'), getenv('dbname'), getenv('dbuser'), getenv('dbpass'));

$posts = $db->query('select * from posts');

print_r($posts); exit;

require VIEW_PATH . 'index.view.php';
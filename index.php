<?php

require 'config.php';
require 'database.php';

$_posts = DB::query('select * from posts order by id desc');

foreach ( $_posts as $post ) 
{
	$reactions = DB::query('select * from reactions where post_id='. $post['id']);
	$post['reactions'] = ['like' => 0,'dislike' => 0,'smile' => 0,'angry' => 0,'love' => 0];
	foreach ( $reactions as $react ) 
	{
		$post['reactions'][$react['reaction']]++;
	}

	$posts[] = $post;
}

require VIEW_PATH . 'index.view.php';
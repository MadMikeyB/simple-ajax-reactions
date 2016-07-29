<?php

require 'config.php';
require 'database.php';

if ( $_POST )
{
	$user_id = (int)$_POST['user_id'];
	$post_id = (int)$_POST['post_id'];
	$reaction = (string)htmlspecialchars($_POST['reaction']);
	$check = DB::query('SELECT user_id,post_id FROM reactions WHERE user_id='.$user_id.' AND post_id='.$post_id);
	if ( ! $check ) {
		DB::query('INSERT INTO reactions (post_id, user_id, reaction) VALUES ('.$post_id.', '.$user_id.', "'.$reaction.'")');

		$count = DB::query('SELECT COUNT(*) as count FROM reactions WHERE post_id='.$post_id.' AND reaction="'.$reaction.'"');
		echo json_encode([$reaction => $count[0]['count']]);
	}
	else
	{
		echo 'err';
	}
}
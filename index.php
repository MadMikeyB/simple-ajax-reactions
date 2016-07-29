<?php

require 'config.php';
require 'database.php';

$posts = DB::query('select * from posts order by id desc');

require VIEW_PATH . 'index.view.php';
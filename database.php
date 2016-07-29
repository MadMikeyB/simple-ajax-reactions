<?php

class DB {
    protected static $instance = null;

    public function __construct() {}
    public function __clone() {}

 	public static function instance()
    {
        if (self::$instance === null)
        {
            $args  = array(
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES   => FALSE,
            );
            $config = 'mysql:host='.getenv('dbhost').';dbname='.getenv('dbname').';charset='.getenv('dbchar');
            self::$instance = new PDO($config, getenv('dbuser'), getenv('dbpass'), $args);
        }
        return self::$instance;
    }

    public static function __callStatic($method, $args)
    {
        return call_user_func_array(array(self::instance(), $method), $args);
    }


	public function query($query)
	{
		$statement = static::instance()->prepare($query);
		$statement->execute();
		return $statement->fetchAll();
	}

	public function select()
	{
		// ...
	}

	public function count()
	{
		// ...
	}

	public function getLastInsertId()
	{
		// ...
	}

	public function save()
	{
		// ...
	}

	public function update()
	{
		// ...
	}

}
<?php

class DB {
	protected $dbhost;
	protected $dbname;
	protected $dbuser;
	protected $dbpass;

	public function __construct($dbhost, $dbname, $dbuser, $dbpass)
	{
		$this->host = $dbhost;
		$this->name = $dbname;
		$this->user = $dbuser;
		$this->pass = $dbpass;
	}

	public function connect()
	{
		print_r($this); exit;
		try {
			$pdo = new PDO('mysql:host=' . $this->host . 'dbname=' . $this->name, $this->user, $this->pass);
			return $pdo;
		} catch (PDOException $e) {
			$e->getMessage();
		}
	}

	public function query($query)
	{
		$pdo = self::connect();
		$statement = $pdo->prepare($query);
		$statement->execute();

		return $statement->fetchAll();
	}

	public function select()
	{

	}

	public function count()
	{

	}

	public function getLastInsertId()
	{

	}

	public function save()
	{

	}

	public function update()
	{

	}

}
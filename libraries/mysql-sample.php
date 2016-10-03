<?php
//class DBConn {
class Mysql {

	private $conn;
	private $user;
	private $pass;
	private $db;
	private static $instance;

	private function __construct() {

        $this->user = "";
        $this->pass = "";
        $this->db = "";

        try {
            $this->conn = new PDO("mysql:host=localhost;dbname=$this->db", $this->user, $this->pass);
            $this->conn->exec("SET CHARACTER SET utf8");
        } catch (PDOException $e) {
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }
	}

	// Singleton Design Pattern
	public static function getInstance(){

        if (!isset(self::$instance))
            self::$instance = new self;

		return self::$instance;
	}

	public function open($sql){
        $_rs = $this->conn->prepare($sql);
        $_rs->execute();

        return $_rs;

	}

    public function FO($result) {
        return $result->fetch(PDO::FETCH_OBJ);
	}

	public function RowCount($result) {
	}


	public function FetchAssoc($Result) {
	}

	public function Execute($query) {
        $this->conn->exec($query);
	}

	public function GetGeneratedID() {
	}

	public function FreeMemory($Result) {
	}

}

?>

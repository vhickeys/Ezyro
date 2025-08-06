<?php

class Database
{
    private $hostname = "localhost";
    private $username = "root";
    private $password = "";
    private $dbname = "ezyro";
    private $conn;


    // Uncomment this for Live Connection
    // private $hostname = "localhost";
    // private $username = "jeapscar_ezyrouser";
    // private $password = "jeapscar_ezyro_2025";
    // private $dbname = "jeapscar_ezyro";
    // private $conn;

    public function __construct()
    {
        $this->connect();
    }

    private function connect()
    {
        try {
            $this->conn = new PDO("mysql:host=$this->hostname;dbname=$this->dbname", $this->username, $this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $th) {
            echo "Connection failed: " . $th->getMessage();
            die();
        }
    }

    public function getConnection()
    {
        return $this->conn;
    }
}

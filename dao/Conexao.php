<?php
	public class Conexao
	{
		private static function conexao(){
			try {
				$conn = new PDO('mysql:host=localhost;dbname=agenciaturismo', 'root', '');
				$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$conn->exec("SET CHARACTER SET utf8");
			} catch (Exception $e) {
				die("Erro na conexão com o banco de dados: ".$e->getMessage());
				echo "Erro de conexão na linha ".$e->getLine();
			}
			return $conn;
		}

		public function getConnection(){
			return conexao();
		}
	}
?>
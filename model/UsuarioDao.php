<?php
	class UsuarioDAO {
		
		private $db;
		private $usuario;

		function __construct(){
			require_once("dao/Conexao.php");
			include("UsuarioBEAN.php");
			$this->db = Conexao::getConnection();
			$this->usuario = array();
		}
/*
		public function getUsuario(){
			try{
				$stmt = $this->db->prepare("SELECT * FROM usuario");
				$stmt->execute();
				$linhas = $stmt->fetchAll();
				$usuariobean = new UsuarioBEAN();
				foreach ($linhas as $usuariobean) {
					$usuario = array(
						"IdUsuario"=> UsuarioBEAN::getIdUsuario(),
						"Login"=> UsuarioBEAN::getLogin(),
						"Senha"=> UsuarioBEAN::getSenha(),
						"Tipo"=> UsuarioBEAN::getTipo()
					);
				}
			} catch (Exception $e) {
				die("Erro no SELECT".$e->getMessage());
				echo "Erro ao carregar os dados dos usuarios ".$e->getLine();
			}
			return $this->usuario;
		}
		*/
		public function getUsuario(){
			$query = $this->db->query("SELECT * FROM usuario");
			while($rows=$query->fetch(PDO::FETCH_ASSOC)){
				$usuario[] = $rows;
			}
			return $this->usuario;
		}
		
		public function checkInUsuario($login, $senha){
			$consulta = $db->query("");
		}

	}
?>
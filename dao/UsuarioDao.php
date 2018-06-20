<?php
	require_once "Conexao.php";
	require_once "model/Usuario.php";

	class UsuarioDAO {
		
		public static $usuariodao;
 
	    private function __construct() {
	        //
	    }
	    public static function getInstance() {
	        if (!isset(self::$usuariodao))
	            self::$usuariodao = new UsuarioDAO();
	 
        return self::$usuariodao;
    	}

    	public function buscarUsuario($id){
    		try {
    			$sql = "SELECT * FROM usuario WHERE IdUsuario= :Id";
    			$stmt = Conexao::getConexao()->prepare($sql);
    			$stmt->bindValue(":Id",$id);
    			$stmt->execute();
    			return usuarioModel($stmt->fetch(PDO::FETCH_ASSOC));
    		} catch (Exception $e) {
    			print "Ocorreu um erro ao tentar executar esta ação de busca.";
    		}
    	}

		
    	private function usuarioModel($row){
    		$usuario = new UsuarioBEAN;
    		$usuario->setIdUsuario($row['IdUsuario']);
    		$usuario->setLogin($row['Login']);
    		$usuario->setSenha($row['Senha']);
    		$usuario->setTipo($row['Tipo']);
    		return $usuario;
    	}

	}
?>
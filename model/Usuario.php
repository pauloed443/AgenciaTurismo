<?php
	class UsuarioBEAN {

		private $_idusuario;
		private $_login;
		private $_senha;
		private $_tipo;

		public function setIdUsuario($value){
			$this->$_idusuario = $value;
		}
		public function getIdUsuario(){
			return $this->$_idusuario;
		}
		public function setLogin($value){
			$this->$_login = $value;
		}
		public function getLogin(){
			return $this->$_login;
		}
		public function setSenha($value){
			$this->$_senha = $value;
		}
		public function getSenha(){
			return $this->$_senha;
		}
		public function setTipo($value){
			$this->$_tipo = $value;
		}
		public function getTipo(){
			return $this->$_tipo;
		}

	}
?>
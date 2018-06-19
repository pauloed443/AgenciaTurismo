<?php
	class UsuarioBEAN {

		private $_idusuario;
		private $_login;
		private $_senha;
		private $_tipo;

		public function setIdUsuario($value){
			$_idusuario = $value;
			return this;
		}
		public function getIdUsuario(){
			return this->$_idusuario;
		}
		public function setLogin($value){
			$_login = $value;
			return this;
		}
		public function getLogin(){
			return this->$_login;
		}
		public function setSenha($value){
			$_senha = $value;
			return this;
		}
		public function getSenha(){
			return this->$_senha;
		}
		public function setTipo($value){
			$_tipo = $value;
			return this;
		}
		public function getTipo(){
			return this->$_tipo;
		}

	}
?>
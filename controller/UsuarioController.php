<?php
	require_once "dao/UsuarioDao.php";
	require_once "model/Usuario.php";

	class UsuarioController
	{
		public function listaUsuario($id){
			return UsuarioDao::buscarUsuario($id);
		}
	}
?>
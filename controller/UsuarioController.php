<?php
	class UsuarioController
	{
		public function getUsuario(){
			require_once("model/UsuarioDao.php");
			$ud = new UsuarioDao();
			return $ud->getUsuario();
		}
	}
?>
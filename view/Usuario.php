<!DOCTYPE html>
<html>
<head>
	<title>Usuário</title>
</head>
<body>
	<pre>
		<?php 
		include("controller/UsuarioController.php");
		$res = UsuarioController::getUsuario();
		echo $res;
		?>
	</pre>
</body>
</html>
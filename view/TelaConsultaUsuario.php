<?php 
	require_once "controller/UsuarioController.php";
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Usuário</title>
</head>
<body>
	<pre>
		<?php 
		echo ''.UsuarioController::listaUsuario(1);
		?>
	</pre>
</body>
</html>
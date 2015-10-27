<?php
include("includes/header.php");
if (isset($logado)){
		/*header("tcc/primeira.html");
}else{
	include("login/cadastro.php");*/
}
?>

<!doctype html>
<htMl xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
<title>TCC- IFSP</title>
<link rel="stylesheet" type="text/css" href="css3maker.html"/>
<link rel="stylesheet" type="text/css" href="CSS/style.css"/>
</head>

<body>
<div id="cadastrar"><a href="cadastro.php" title="Cadastre-se e entre para nossa equipe!">Cadastre-se &raquo;</a></div>
	<div id="login" class="form bradius" style="top:150px">
		<div class="message" style="?php echo $display;?>"><?php echo $msg;?></div>  
			<div class="logo bradius"><a href="<?php echo $home;?>"title="<?php echo $title;?>"><img src="imagens/cartao.jpg"alt=
			"<?php echo $title;?>"title="<?php echo $title;?>"width="250"height="50"/></a></div>
				<div class="acomodar">
					<form action="?acao=logar"method="post">
					<label for="email">E-mail: </label><input id="email"type="text" class="txt bradius" name="email" value=""/>
					<label for="senha">Senha: </label><input id="senha" type="password" class="txt bradius" name="senha" value=""/>
					<input type="submit" class="sb bradius" value="Entrar"/>
					</form>
				</div>
		</div>
	
</body>
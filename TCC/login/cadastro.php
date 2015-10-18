
<?php
include("includes/header.php");
if (isset($logado)){
	header("tcc/primeira.html");
}else{
	header("login/cadastro.php");
}
?>

<!doctype html>
<htMl xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
<title>JScadastro</title>
<link rel="stylesheet" type="text/css" href="CSS/style.css"/>
</head>
<body>
<div id="cadastrar"><a href="index.php" title="Faça Login!">Login &raquo;</a></div>
	<div id="login" class="form bradius" style="top: 150px;">
		<div class="message bradius" style="<?php echo $display;?>"><?php echo $msg;?></div>
		<div class="logo"><a href="<?php echo $home;?>"title="<?php echo $title;?>"><img id="logo" src="../_imagens/logoJeffersonScheffer.jpg"alt=
			"<?php echo $title;?>"title="<?php echo $title;?>"width="250"height="58"/></a></div>
				<div class="acomodar">
					<form action="?acao=cadastrar"method="post">
					<label for="nome">Nome: </label><input id="nome"type="text" class="txt bradius" name="nome" value=""/>
					<label for="endereco">Endereço: </label><input id="end" type="text" class="txt bradius" name="end" value=""/>
					<label for="telefone">Telefone: </label><input id="tele"type="text" class="txt bradius" name="tele" value=""/>
					<label for="cidade">Cidade: </label><input id="cida" type="text" class="txt bradius" name="cida" value=""/>
					<label for="email">E-mail: </label><input id="email"type="text" class="txt bradius" name="email" value=""/>
					<label for="senha">Senha: </label><input id="senha" type="password" class="txt bradius" name="senha" value=""/>
					<input type="submit" class="sb bradius" value="Cadastrar"/>
					</form>
				</div>
		</div>
	
</body>
</html>


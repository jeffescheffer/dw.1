<?php
include("connect.php");
?>

<!DOCTYPE html>
<html>
<head>
	<title>PrimeiraPagina</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="_css/estilotcc.css"/>
	<link rel="stylesheet" type="text/css" href="_css/estilotcc_cliente.css">
	<link rel="stylesheet" type="text/css" href="_css/estilotcc_produto.css">
</head>
<body>
	<div id="corpo">
		<div id="interface">
			<div id="logo">
    			<img id="logo" src="_imagens/logoJeffersonScheffer.jpg">
    		</div>
		</div>
			<div id="menu">		

				<button id="login" type="submit"><a href="primeira.php">Cliente</a></button>

				<br><br>
				<button id="login" type="submit"><a href="produto.php">Produto</a>Produto</button>
					<br><br>
				<button id="login" type="submit">Orçamento</button>
					<br><br>
				<button id="login" type="submit">Pedido</button>
					<br><br>
				<button id="login" type="submit">Calculadora</button>
			</div>

			<div id="menu_cliente">

						<form action="insert_clientes.php" method="post" style="text-align:center">	
												
						<button id="login_cliente" type="submit" name="bto_cadstrar" value="cadastrar">Cadastrar</a></button>
													
						<!--<button id="login_cliente" type="submit" name="bto1" value="excluir"><a href="excluir.php">Excluir</a></button>
							
						<button id="login_cliente" type="submit" name="bto1" value="consultar"><a href="consultar.php">Consultar</a></button>
							<br><br>
						<button id="login_cliente" type="submit" name="bto1">Alterar</button>
							
						<button id="login_cliente" type="submit" name="bto1" value="editar"><a href="editar.phbutton">Editar</a></button>

						<button id="login_cliente" type="submit" name="bto1" value="excluir">Excluir</button>-->
							
			</div>

			<nav id="visualizacao_cliente">

																		
							<fieldset id="visualizacao_cliente">
							<legend>Formulário de Cadastro</legend>
								<label id="razaosocial">Razão Social: </label><input id="razaosocial" type="text" class="txt bradius" name="txtrazaosocial" value=""/>
								<label id="endereco">Endereço: </label><input id="endereco" type="text" class="txt bradius" name="txtendereco" value=""/>	
								<label id="bairro">Bairro: </label><input id="bairro"type="text" class="txt bradius" name="txtbairro" value=""/>
								<label id="municipio">Cidade: </label><input id="municipio" type="text" class="txt bradius" name="txtmunicipio" value="" />
								<label id="uf">UF: </label><input id="uf" type="text" class="txt bradius" name="txtuf" value="" />
								<label id="cep">CEP: </label><input id="cep" type="text" class="txt bradius" name="txtcep" value="" />
								<label id="ddd">DDD: </label><input id="ddd" type="text" class="txt bradius" name="txtddd" value="" />
								<label id="contato">Contato: </label><input id="contato" type="text" class="txt bradius" name="txtcontato" value="" />
								<label id="tel_1">Fone: </label><input id="tel_1" type="text" class="txt bradius" name="txttel_1" value="" />
								<input id="tel_2"type="text" class="txt bradius" name="txttel_2" value="" />
								<label id="email_1">E-mail: </label><input id="email_1" type="text" class="txt bradius" name="txtemail_1" value="" />
								<input id="email_2" type="text" class="txt bradius" name="txtemail_2" value="" />
								<label id="abc">ABC: </label><input id="abc" type="text" class="txt bradius" name="txtabc" value="" />
								<label id="zona">Região: </label><input id="zona" type="text" class="txt bradius" name="txtzona" value="" />
								<label id="cnpj">CNPJ: </label><input id="cnpj" type="text" class="txt bradius" name="txtcnpj" value="" />
								
							</fieldset>
						</form>
					<br>
					</nav>
					<br>
							<div id="hora">
								<body>
										<script language="JavaScript">

											document.write("<font color='#00456F' size='3' face='arial'>")
											var mydate=new Date()
											var year=mydate.getYear()
											if (year<2000)
											year += (year < 1900) ? 1900 : 0
											var day=mydate.getDay()
											var month=mydate.getMonth()
											var daym=mydate.getDate()
											if (daym<10)
											daym="0"+daym
											var dayarray=new Array("Domingo","Segunda-feira","Terça-feira","Quarta-feira","Quinta-feira","Sexta-feira","Sábado")
											var montharray=new Array(" de Janeiro de "," de Fevereiro de "," de Março de ","de Abril de ","de Maio de ","de Junho de","de Julho de ","de Agosto de ","de Setembro de "," de Outubro de "," de Novembro de "," de Dezembro de ")
											document.write("   "+dayarray[day]+", "+daym+" "+montharray[month]+year+" ")
											document.write("</b></i></font>")
											</script>
											
							</body>
							</div>

	</div>
</body>
</html>
<?php
//Starts
ob_start();
session_start();


//Globais
$home="http://localhost/sistemacadastro";
$title="JS - Administração";
$startaction="";
$msg="";
if(isset($_GET["acao"])){
	$acao=$_GET["acao"];
	$startaction=1;
}

//Include das classes
include("classes/DB.class.php");
include("classes/cadastro.class.php");
include("classes/login.class.php");

//Conexão com o banco de dados
$conectar=new DB;
$conectar=$conectar->conectar();

/* Teste para comunicação com o banco de dados.
$query=mysql_query("SELECT * FROM usuarios");
echo mysql_num_rows($query);

*/


//Método de cadastro//
	if($startaction==1){
	if($acao =="cadastrar"){
		$nome=$_POST["nome"];
		$end=$_POST["end"];
		$tele=$_POST["tele"];
		$cida=$_POST["cida"];
		$email=$_POST["email"];
		$senha=$_POST["senha"];

		if(empty($nome) || empty($end) || empty($tele) || empty($cida) || empty($email) || empty($senha)){
			$msg="Preencha todos os campos";   //validação de todos os campos preenchidos
		}
		else{
			if(filter_var($email,FILTER_VALIDATE_EMAIL)) {   //E-mail válido
				if(strlen($senha)<4) {
					$msg="Digite sua senha com no mínimo quatro caracteres";   //senha inválida
				}
				else{    //senha válida
				$conectar=new Cadastro;   //executa a classe do cadastro
				echo "<div class=\"flash\">";
				$conectar=$conectar->cadastrar($nome, $end, $tele, $cida, $email, $senha);
				echo "</div>";
			}
		}
			else{
				$msg="Digite seu e-mail corretamente!";   //e-mail inválido
			}
	}
}
}	
	//Método de Login
if($startaction==1){
	if($acao =="logar"){
		//Dados
		$email=($_POST["email"]);
		$senha=(sha1($_POST["senha"]."helena38"));

		if (empty($email) || empty($senha)) {
			$msg="Preencha todos os campos!";
		}else{
			if(!filter_var($email,FILTER_VALIDATE_EMAIL)) { 
				$msg="Digite o e-mail corretamente";
			}
			else{
				//executa a busca pelo usuário
				$login=new login;
				/* Teste de logar*/
				/*$_SESSION["email"] = $email;
				$_SESSION["senha"] = $senha;

				$emaild=$_SESSION["email"];
				$senhad=$_SESSION["senha"];*/


				echo"<div class=\"flash\">";//$emaild $senhad";
				$login=$login->logar($email, $senha);
				echo"</div>";
			}
		}
	}
}
//Método de estilo
if (empty($msg)) {
	$display="display:none;";
}
else{
	$display="display:block;";
	}

//Método de checagem
if (isset($_SESSION["email"]) && isset($_SESSION["senha"])) {
	$logado=1;
	$nivel=$_SESSION["nivel"];
}

	?>

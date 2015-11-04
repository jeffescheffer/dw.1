<?php
$connect 	=mysql_connect('localhost','root','');
$selectDb 	=mysql_select_db('sistema_tcc', $connect) or die (mysql_error());

$razaosocial  	=$_POST['razaosocial'];
$cnpj			=$_POST['cnpj'];
$contato		=$_POST['contato'];
$classificacao	=$_POST['classificacao'];
$municipio		=$_POST['municipio'];
$uf				=$_POST['uf'];
$endereco		=$_POST['endereco'];
$cep			=$_POST['cep'];
$ddd			=$_POST['ddd'];
$tel_1			=$_POST['tel_1'];
$tel_2			=$_POST['tel_2'];
$bairro			=$_POST['bairro'];
$zona			=$_POST['zona'];
$email_1		=$_POST['email_1'];
$email_2		=$_POST['email_2'];


$sql 		= "INSERT INTO cadastro_clientes(
												razaosocial, 
												cnpj, 
												contato, 
												classificacao, 
												municipio, 
												uf, 
												endereco, 
												cep, 
												ddd, 
												tel_1, 
												tel_2, 
												bairro, 
												zona, 
												email_1, 
												email_2
												)
							VALUES(
												'$razaosocial', 
												'$cnpj', 
												'$contato', 
												'$classificacao', 
												'$municipio', 
												'$uf', 
												'$endereco', 
												'$cep', 
												'$ddd', 
												'$tel_1', 
												'$tel_2', 
												'$bairro', 
												'$zona', 
												'$email_1', 
												'$email_2'
												)";	
if (mysql_query($sql)){

header('location: primeira.html?resultado=ok!');
}else{
	header('location: primeira.html?resultado=false!');
}
?>
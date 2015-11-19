<?php
$connect 	=mysql_connect('localhost','root','');
$selectDb 	=mysql_select_db('sistema_tcc', $connect) or die (mysql_error());


$razaosocial  	=$_POST['txtrazaosocial'];
$cnpj			=$_POST['txtcnpj'];
$contato		=$_POST['txtcontato'];
$classificacao	=$_POST['txtclassificacao'];
$municipio		=$_POST['txtmunicipio'];
$uf				=$_POST['txtuf'];
$endereco		=$_POST['txtendereco'];
$cep			=$_POST['txtcep'];
$ddd			=$_POST['txtddd'];
$tel_1			=$_POST['txttel_1'];
$tel_2			=$_POST['txttel_2'];
$bairro			=$_POST['txtbairro'];
$zona			=$_POST['txtzona'];
$email_1		=$_POST['txtemail_1'];
$email_2		=$_POST['txtemail_2'];

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

header('location: primeira.php?resultado=ok!');
}else{
	header('location: primeira.php?resultado=false!');
}
?>
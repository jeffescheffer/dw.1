
<?php
//servidor, usuário e senha
$connect 	=mysql_connect('localhost','root','');

//banco de dados
$selectDb 	=mysql_select_db('sistema_tcc', $connect) or die (mysql_error());
mysql_set_charset("utf8", $connect);

return($connect);
return($selectDb);

$dbh = new PDO("mysql:host=localhost;dbname=sistema_tcc;charset=utf8", 'root', '');

foreach($dbh->query("SELECT * FROM cadastro_clientes") as $linha){
	print_r($linha);
}
exit;
?>



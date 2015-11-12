


<?php
//servidor, usuário e senha
$connect 	=mysql_connect('localhost','root','');

//banco de dados
$selectDb 	=mysql_select_db('sistema_tcc') or die (mysql_error());

return($connect);
return($selectDb);
?>



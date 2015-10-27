<?php
	class Cadastro{
		public function cadastrar($nome, $end, $tele, $cida, $email, $senha){
			//Tratamento de variáveis
			$nome=ucwords(strtolower($nome));//strtolower
			$end=ucwords(strtolower($end));//ucwords 
			$tele=ucwords(strtolower($tele));
			$cida=ucwords(strtolower($cida));
			$email=ucwords(strtolower($email));
			$senha=sha1($senha."helena38");//sha1

			//inserção no banco de dados
			$validaremail=mysql_query("SELECT * FROM usuarios WHERE email='$email'");
			$contar=mysql_num_rows($validaremail);
			if($contar==0){
			$insert=mysql_query("INSERT INTO usuarios(nome, end, tele, cida, email, senha, nivel, status)
				VALUES('$nome', '$end', '$tele', '$cida', '$email', '$senha', 1, 0)");
			}else{
				$flash="Já existe um usuário cadastrado com este e-mail em nosso sistema";
				}
			if(isset($insert)){
				$flash="Cadastro realizado com sucesso, aguarde nossa aprovação!";
			}else{
				if (empty($flash)){
				$flash="Ops! Houve um erro em nosso sistema, contacte o administrador!";
				}
			}

			//Retorno para o usuário
			echo $flash;
		}
	}



?>
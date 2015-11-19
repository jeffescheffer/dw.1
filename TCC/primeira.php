<?php
include("connect.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>PrimeiraPagina</title>
	<link rel="stylesheet" type="text/css" href="_css/estilotcc.css"/>
	<link rel="stylesheet" type="text/css" href="_css/estilotcc_cliente.css">
	<link rel="stylesheet" type="text/css" href="_css/estilotcc_produto.css">
	<meta http-equiv="Content-Type"; content="text/html"; charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">
	<script type="text/javascript" src="media/js/jquery.js"></script>
	<script type="text/javascript" src="media/js/jquery.dataTables.js"></script>
	<style type="text/css">
	@import "media/css/jquery.dataTables.css";
	</style>

	<script type="text/javascript" charset="utf-8">
		$(document).ready(function(){
			var table = $('#visualizacao_cliente1').DataTable({

			"lengthMenu": [[7, 10, 25, -1], [7, 10, 25, "Todos"]],//opção de qnt de linhas
			"language": {                                         //configuração do comandos em Pt
			"sProcessing": "Processando...",
            "lengthMenu": "Exibindo _MENU_ registros por página",
            "szeroRecords": "Nada encontrado - Desculpe ;)",
            "info": "Exibindo página _PAGE_ de _PAGES_ páginas",
            "sinfoEmpty": "Não há registros",
            "sinfoFiltered": "(filtrando de _MAX_ registros no total)",
            "sSearch": "Buscar:",
            "sUrl": "",
            "oPaginate": {
            	"sFirst": "Primeiro",
            	"sPrevious": "Anterior",
            	"sNext": "Seguinte",
            	"sLast": "Último"
            			}//fechamento oPaginate
        				},//fechamento language


				"pagingType": "full_numbers"
				
												});//fechamento dataTable

 $('#visualizacao_cliente1 tbody').on( 'click', 'tr', function () {    //excluir dados
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    } );
 
    $('#button').click( function () {
        table.row('.selected').remove().draw( false );
    } );

									} );//fechamento function


	</script>

</head>
<body>
	<div>
		<?php
			
		?>
	</div>


	<div id="corpo">
		<div id="interface">
			<div id="logo">
    			<img id="logo" src="_imagens/logoJeffersonScheffer.jpg">
    		</div>  <!--fechamento logo-->
		</div>  <!--fechamento interface-->
			<div id="menu">		
				<button id="login" type="submit"><a href="primeira.php">Cliente</a></button>
					<br><br>
				<button id="login" type="submit"><a href="produto.php">Produto</a></button>
					<br><br>
				<button id="login" type="submit">Orçamento</button>
					<br><br>
				<button id="login" type="submit">Pedido</button>
					<br><br>
				<button id="login" type="submit"><a href="calculadora.html">Calculadora</button>
			</div>  <!--fechamento menu-->


			<!--<//?php
					$var1=	"";
					$var2=	"";
					$var3=	"";
					$var4=	"";
					$var5=	"";
					$var6=	"";
					$var7=	"";
					$var8=	"";
					$var9=	"";
					$var10=	"";
					$var11=	"";
					$var12=	"";
					$var13=	"";
					$var14=	"";
					$var15=	"";
					$var16=	"";

					if (isset($_POST["bto1"])) {
						$bto=$_POST["bto1"];
						$consultar_razaosocial=	$_POST["consulta_razaosocial"];
												
						if ($bto=="consultar") {
							$sql=		"SELECT * FROM cadastro_clientes where razaosocial='$consultar_razaosocial'";
							$consulta=	mysql_query($sql,$connect);
							while ($resul=mysql_fetch_array($consulta)) {
								$var1=	$resul [1];
								$var2=	$resul [2];
								$var3=	$resul [3];
								$var4=	$resul [4];
								$var5= 	$resul [5];
								$var6=	$resul [6];
								$var7=	$resul [7];
								$var8=	$resul [8];
								$var9=	$resul [9];
								$var10= $resul [10];
								$var11=	$resul [11];
								$var12=	$resul [12];
								$var13=	$resul [13];
								$var14=	$resul [14];
								$var15= $resul [15];
								$var16=	$resul [16];
								
							}

						}

						if ($bto=="cadastrar") {

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

							$sql="INSERT INTO 	cadastro_clientes(
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
							$consulta=	mysql_query($sql,$connect);
							
					}


					?>-->
			

			<div id="menu_cliente">

												
						<button id="login_cliente" type="button" name="bto1" value="cadastrar"><a href="cadastrar.php">Cadastrar</a></button>
													
						<button id="login_cliente" type="submit" name="bto1" value="consultar"><a href="teste1.php">Consultar</a></button>

						<!--<button id="login_cliente" type="submit" name="bto1" value="excluir"><a href="excluir.php">Excluir</a></button>
							<br><br>
						<button id="login_cliente" type="submit" name="bto1">Alterar</button>
							
						<button id="login_cliente" type="submit" name="bto1" value="editar"><a href="editar.phbutton">Editar</a></button>

						<button id="login_cliente" type="submit" name="bto1" value="excluir">Excluir</button>-->
							
			</div>
						
					
					
					<!--<div id="visualizacao_cliente_primeira">
					<table id="visualizacao_cliente1">
						<thead>
						<tr>
							<th>Razão Social</th>
							<th>Cidade</th>
							<th>DDD</th>
							<th>Telefone</th>
							<th>E-mail</th>
							<th>Contato</th>
							<th>Endereço</th>
							<th>Bairro</th>
							<th>CEP</th>
							<th>UF</th>
							<th>Telefone 2</th>
							<th>E-mail 2</th>
							<th>CNPJ / CPF</th>
							<th>Classificação</th>
							<th>Zona</th>
						</tr>
						</thead>
						
						<tbody>	
							<?php
								
							$query = mysql_query("SELECT * FROM cadastro_clientes");
							while ($linha = mysql_fetch_array($query)) {
							?>

							
						<tr>
							<td><?php echo $linha['razaosocial'] ?></td>
							<td><?php echo $linha['municipio'] ?></td>
							<td><?php echo $linha['ddd'] ?></td>
							<td><?php echo $linha['tel_1'] ?></td>
							<td><?php echo $linha['email_1'] ?></td>
							<td><?php echo $linha['contato'] ?></td>
							<td><?php echo $linha['endereco'] ?></td>
							<td><?php echo $linha['bairro'] ?></td>
							<td><?php echo $linha['cep'] ?></td>
							<td><?php echo $linha['uf'] ?></td>
							<td><?php echo $linha['tel_2'] ?></td>
							<td><?php echo $linha['email_2'] ?></td>
							<td><?php echo $linha['cnpj'] ?></td>
							<td><?php echo $linha['classificacao'] ?></td>
							<td><?php echo $linha['zona'] ?></td>
						</tr>
						<?php
						}
						?>
											
						</tbody>
					</table>
				
				</div>-->
				
						
					
					<br>
							<div id="hora">
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
											
							
							</div>  <!--fechamento hora-->

	</div>  <!--fechamento menu_cliente-->

</body>
</html>

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
	<link rel="stylesheet" type="text/css" href="https://code.jquery.com/jquery-1.11.3.min.js">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js">
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
				<div id="visualizacao_teste1">
				<button id="login" type="submit"><a href="primeira.php">Voltar</a></button>
				<br><br>
					<table id="visualizacao_cliente1" class="display">
						<thead>
						<tr>
							<th>Razão Social</th>
							<th>Cidade</th>
							<th>DDD</th>
							<th>Telefone</th>
							<th>E-mail</th>
							<th>Contato</th>
							<th>Endereço</th>
							<!--<th>Bairro</th>
							<th>CEP</th>
							<th>UF</th>
							<th>Telefone 2</th>
							<th>E-mail 2</th>
							<th>CNPJ / CPF</th>
							<th>Classificação</th>
							<th>Zona</th>-->
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
							<!--<td><?php echo $linha['bairro'] ?></td>
							<td><?php echo $linha['cep'] ?></td>
							<td><?php echo $linha['uf'] ?></td>
							<td><?php echo $linha['tel_2'] ?></td>
							<td><?php echo $linha['email_2'] ?></td>
							<td><?php echo $linha['cnpj'] ?></td>
							<td><?php echo $linha['classificacao'] ?></td>
							<td><?php echo $linha['email_2'] ?></td>-->
						</tr>
						<?php
						}
						?>
											
						</tbody>
					</table>
				
				</div>
				</body>
		</html>
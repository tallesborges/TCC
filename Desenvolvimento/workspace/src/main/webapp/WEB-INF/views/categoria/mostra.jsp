<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Categoria</title>
</head>
<body>
	<h1>${categoria.descricao}</h1>
	<table id="tabela" class="table">
		<thead>
			<tr>
				<th>Descricao</th>
				<th>Tipo</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${categoria.variaveis}" var="variavel">
				<tr>
					<td>${ variavel.descricao }</td>
					<td>${ variavel.tipo }</td>
					<td><a href="/faddvm/variavel/${variavel.id}">Mostrar</a>
					<a href="/faddvm/variavel/remover/${variavel.id}">Deletar</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="dataTables_scroll"></div>
	<a href="/faddvm/categoria" class="btn btn-primary">Voltar</a>
	<a href="/faddvm/variavel/nova/${categoria.id}" class="btn btn-primary">Nova Variavel</a>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#tabela')
									.dataTable(
											{
												"oLanguage" : {
													"sProcessing" : "Aguarde enquanto os dados são carregados ...",
													"sLengthMenu" : "Mostrar _MENU_ registros",
													"sZeroRecords" : "Nenhum registro correspondente ao criterio encontrado",
													"sInfoEmpty" : "Exibindo 0 a 0 de 0 registros",
													"sInfo" : "Exibindo de _START_ a _END_ de _TOTAL_ registros",
													"sInfoFiltered" : "",
													"sSearch" : "Procurar",
													"oPaginate" : {
														"sFirst" : "Primeiro",
														"sPrevious" : "Anterior",
														"sNext" : "Próximo",
														"sLast" : "Último"
													}
												}
											});
						});
	</script>

</body>
</html>
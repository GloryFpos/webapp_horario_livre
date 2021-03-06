<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Perfil</title>
</head>
<body>

<div class="alert alert-info">
	<strong>Perfil de ${usuario.login}</strong> Segue abaixo os dados cadastrais do usu&aacute;rio <i>${usuario.primeiroNome} ${usuario.ultimoNome}</i>.
</div>
      
<div class="container">

<table id="hor-minimalist-a">
<tr>
			<table id="hor-minimalist-a" class="perfil">
				    <thead>
				    <tr>    
				        <th colspan=2><div align="center"><h2>Dados de <strong>${usuario.login}</strong></h2></div></th>
				    </tr>
				    </thead>
					
					<tbody>
					<tr>
						<th> Primeiro Nome: </th> <td> ${usuario.primeiroNome} </td>
					</tr>
					
					<tr>
						<th> Ultimo Nome: </th> <td> ${usuario.ultimoNome} </td>
					</tr>
					
					<tr>
						<th> Tipo: </th> <td> ${usuario.tipo.nome} </td>
					</tr>
					
					</tbody>
			</table>
</tr>
<tr>
	<form method="post" action="<c:out value="${pageContext.request.contextPath}/usuario/salva_perfil"/>" id="target">
			<table id="hor-minimalist-a" class="cadastro">
				    <thead>
				    <tr>    
				        <th>Atributo</th>
				        <th>Valor</th>
				    </tr>
				    </thead>
				    <tfoot>
					<tr>
						<td> <button type="submit" class="btn btn-lg btn-primary">Salvar</button> </td>
						<td> <div id="result"></div> </td>
					</tr>
				    </tfoot>
				    <tr>
						<td> Digite uma Senha:</td> <td> <input type="password" name="senha1" size=20 maxlength=40> </td>
					</tr>
					
					<tr>
						<td> Repita a Senha: </td> <td> <input type="password" name="senha2" size=20 maxlength=40> </td>
					</tr>
					
					<tr>
						<td> Primeiro Nome: </td> <td> <input type="text" name="pnome" value="${usuario.primeiroNome}" size=20 maxlength=40> </td>
					</tr>
					
					<tr>
						<td> Ultimo Nome: </td> <td> <input type="text" name="unome" value="${usuario.ultimoNome}" size=20 maxlength=40> </td>
					</tr>
					
			</table>
	</form>
</tr>
</table>

</div>

<script>
$(document).ready(function(){
	var obj_tipo = jQuery.parseJSON( '${lista_tipos}' );
	var obj_campo = jQuery.parseJSON( '${lista_campos}' );
	
	var newRow = $('<tr>');
	col_1 = '<td> Tipo: </td>';
	col_2 = $('<td></td>');
	var select = $('<select name="tipo">');
	for(var item in obj_tipo.Tipo)
	    select.append('<option value="'+obj_tipo.Tipo[item].nome+'">'+obj_tipo.Tipo[item].nome+'</option>');

	select.appendTo(col_2);
	newRow.append(col_1);
	newRow.append(col_2);

	$("table.cadastro").append(newRow);
	
	for(var item in obj_campo.Key) {
		$("table.cadastro").append('<tr> <td> '+obj_campo.Key[item].key+' : </td> <td> <input type="text" name="'+obj_campo.Key[item].key+'" value="'+obj_campo.Key[item].value+'" size=20 maxlenght=40> </td> <tr>');
		$("table.perfil").append('<tr> <th> '+obj_campo.Key[item].key+' : </th> <td>'+obj_campo.Key[item].value+'</td> <tr>');
	}
});
</script>

    <script>
    $( "#target" ).submit(function( event ) {
    	 
    	  // Stop form from submitting normally
    	  event.preventDefault();
    	 
    	  // Get some values from elements on the page:
    	  var $form = $( this ),
    	  	url = $form.attr( "action" );
    	 
    	  // Send the data using post
    	  var posting = $.post( url, $(this).serialize() );
    	 
    	  // Put the results in a div
    	  posting.done(function( data ) {
    		  if(data == 1)
    			  $( "#result" ).empty().append( "Perfil salvo com sucesso" );
    		  else
    			  $( "#result" ).empty().append( "Perfil n&atilde;o salvo" );
    		  
    		  $("#target").each (function(){
    			  this.reset();
    		  });
    	  });
    	});
    </script>

</body>
</html>
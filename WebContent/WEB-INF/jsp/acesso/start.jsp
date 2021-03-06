<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HorarioLivre</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:out value="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"/>" rel="stylesheet">
    <link href="<c:out value="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.css"/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:out value="${pageContext.request.contextPath}/jquery/css/bootstrap/jquery-ui-1.10.4.custom.css"/>" rel="stylesheet">
    
    <link href="<c:out value="${pageContext.request.contextPath}/extras/css/starter-template.css"/>" rel="stylesheet">
    <link href="<c:out value="${pageContext.request.contextPath}/extras/css/grid.css"/>" rel="stylesheet">
    <link href="<c:out value="${pageContext.request.contextPath}/extras/css/signin.css"/>" rel="stylesheet">
    <link href="<c:out value="${pageContext.request.contextPath}/extras/css/table.css"/>" rel="stylesheet">
    <link href="<c:out value="${pageContext.request.contextPath}/extras/css/style.css"/>" rel="stylesheet">
    
	<link href="${pageContext.request.contextPath}/extras/css/normalize.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/extras/css/datepicker.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/extras/css/jquery-ui-timepicker-addon.min.css" rel="stylesheet" type="text/css"/>
		
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">HorarioLivre</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Evento<b class="caret"></b></a>
            	<ul class="dropdown-menu">
            		<li><a href="[<c:out value="${pageContext.request.contextPath}/evento/lista"/>]">Listar</a>
            		<li><a href="[<c:out value="${pageContext.request.contextPath}/evento/cadastra"/>]">Cadastrar</a>
            	</ul>
            </li>
            <li><a href="[<c:out value="${pageContext.request.contextPath}/horario/lista"/>]">Listar Hor&aacute;rios</a></li>
            <li><a href="[<c:out value="${pageContext.request.contextPath}/horario/cadastra"/>]">Cadastrar Hor&aacute;rios</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Usu&aacute;rio<b class="caret"></b></a>
            	<ul class="dropdown-menu">
            		<li><a href="[<c:out value="${pageContext.request.contextPath}/usuario/lista"/>]">Listar</a>
            		<li><a href="[<c:out value="${pageContext.request.contextPath}/usuario/cadastra"/>]">Cadastrar</a>
            	</ul>
           	</li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
	          <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown">${usuario.primeiroNome} ${usuario.ultimoNome}<b class="caret"></b></a>
		          <ul class="dropdown-menu">
		            <li><a href="[<c:out value="${pageContext.request.contextPath}/usuario/perfil"/>]">Perfil</a></li>
		            <li><a href="[<c:out value="${pageContext.request.contextPath}/usuario/config"/>]">Configura&ccedil;&otilde;es</a></li>
		            <c:url value="/logout" var="logoutUrl"/>
		            <li><a href="${logoutUrl}">Sair</a></li>
		          </ul>
	          </li>
          </ul>
        </div><!--/.nav-collapse -->
       </div>
      </div>
      
      <div id="container">
	  </div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:out value="${pageContext.request.contextPath}/jquery/js/jquery-2.1.0.min.js"/>"></script>
    <script src="<c:out value="${pageContext.request.contextPath}/jquery/js/jquery-ui-1.10.4.custom.min.js"/>"></script>
    <script src="<c:out value="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="<c:out value="${pageContext.request.contextPath}/extras/js/jquery-ui-timepicker-addon.js"/>"></script>
    <script src="<c:out value="${pageContext.request.contextPath}/extras/js/jquery-ui-sliderAccess.js"/>"></script>
    
    <script>
    $('document').ready(function(){
    	$( ".dialog" ).dialog({
    	      autoOpen: false,
    	      closeOnEscape: true,
    	      closeText: "fechar",
    	      show: {
    	        effect: "fadeIn",
    	        duration: 1000
    	      },
    	      hide: {
    	        effect: "fadeOut",
    	        duration: 1000
    	      },
    	      close: function( event, ui ) {
    	    	  alert("fechar");
    	      }
    	    });
    	
    	$('a').click(function(e){
    		var link = $(this).attr('href');
    		var tam = link.length;
    		console.log("tam="+tam);
    		console.log("link="+link);
    		
    		var primeiraLetra = link.charAt(0);
    		console.log("primeiraLetra="+primeiraLetra);
    		
    		var ultimaLetra = link.charAt(tam-1);
    		console.log("ultimaLetra="+ultimaLetra);
    		
    		var result = link.substr(1, tam-2);
    		console.log("result="+result);
    		
    		if(primeiraLetra == '[' && ultimaLetra == ']') {
   				var id_dialog_div = Math.floor(Math.random() * 1000000);
   				var dialog_div = $('<div id="'+id_dialog_div+'" class="dialog" title="Basic dialog"> <p> <span id="text'+id_dialog_div+'"></span> </p> </div>');
   				$("#container").append(dialog_div);
   				
   				e.preventDefault();
    			
	    		$.get(result, function(data){
	    			var $temp  = $('<div/>', {html:data});
	                $( dialog_div ).dialog({ title: $temp.find('title').text() });
	                $('#text'+id_dialog_div).html($temp.remove('head').html());
	                $( dialog_div ).dialog({ height: 720 });
	                $( dialog_div ).dialog({ width: 720 });
	                $( dialog_div ).dialog( "open" );
	    		});
    		}
    	});
    });
    </script>
  </body>
</html>

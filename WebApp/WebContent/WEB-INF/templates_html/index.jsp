<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Web Artilleria de Avancarga</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link type="text/css" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.css" rel="stylesheet"/>
  <link type="text/css" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link type="text/css" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-theme.css" rel="stylesheet"/>
  <link type="text/css" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>
  <link type="text/css" href="<%=request.getContextPath() %>/bootstrap/css/theme.css" rel="stylesheet"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <!--   <script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.js"></script>-->
  <script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
<script type=text/javascript>
function submitForm(num) {
	if(document.getElementById(num).checked){
		alert("El Id del Arma seleccionada es"+num);
	}
	var variable=document.getElementById(num).value
    	
	document.getElementById("myForm").submit();
	window.location.href=window.location.href+"informacion-total?num="+ num
	//document.getElementById("hiddenId").value=num;
	/*if(document.getElementById("radio").checked){
    	alert("HOLA");
    }*/
   // var hola=document.getElementById("myForm");
    ///alert(hola)
    
}
</script>
</head>

<body>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Artillería App</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#nuevaarma">Nueva Arma</a></li>
          <!--  <li><a href="#contact">Contact</a></li>-->  
            <!--  <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>-->
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<div class="container theme-showcase" role="main">

      <!-- Main jumbotron for a primary marketing message or call to action -->
    

      <div class="page-header">
        <h1>Armas de Artillería</h1>
      </div>
      
		<div class="container">
    	<div class="row">
		
      
        <div class="col-md-12">
        
        <div class="table-responsive">

             <!--  <form method="post" action="/hola" name="form" onclick="marcado();">-->
             
              <table id="mytable" class="table table-bordered table-striped">
                   
                   <thead>
                   
                    
    
    <th></th>
   <!-- <input type="checkbox" id="checkall" />--></th>
                     <th>Id</th>
                     <th>Fecha</th>
                     <th>Nacionalidad</th>
                     <th>Material</th>
                     <th>Origen</th>
                     <th>Observaciones</th>
                     <th>Tipo de Pieza</th>
                     <th>Definicion</th>
                     <th>Tipo de Arma</th>
                     <th>Calibre de A</th> 
                   </thead>
                   
				   <tbody>
				   
				   <c:if test="${not empty lists}">
				  
						<c:forEach var="listValue" items="${lists}" varStatus="i">
					
        
    <!--<c:set var="entry" value="${listValue}" scope="request"/>-->
						<tr>
						<form id="myForm" action="/WebApp/informacion-total/" method="post">
								<td>
								 
								<input type="radio" id="${listValue.weapon_identifier}" name="env" value="${listValue.weapon_identifier}" onclick="submitForm(${listValue.weapon_identifier})"/>
								</td>
								<td>${listValue.weapon_identifier}</td>
				    			<td>${listValue.date}</td>
				    			<td>${listValue.nationality}</td>
				    			<td>${listValue.material}</td>
				    			<td>${listValue.origin}</td>
				    			<td>${listValue.observations}</td>
				    			<td>${listValue.type_piece}</td>
				    			<td>${listValue.definition}</td>
				    			<td>${listValue.type_of_weapon}</td>
				    			<td>${listValue.calibre_A}</td>
				    			<!--  <input type="hidden" id="hiddenId" name="hiddenId"/>-->
				    	</tr>
						</c:forEach>
					</c:if>
				   </form>
			</tbody>
				        
			</table>


    
        <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
 
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>

    </div> <!-- /container -->

</body>
</html>
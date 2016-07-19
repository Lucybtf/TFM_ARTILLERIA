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
</head>
<body>
 <c:out value="${param.myVar}"/>
 
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
        <h3>Información General del Arma</h3>
                 <div class="table-responsive">     
              <table id="mytable" class="table table-bordered table-striped">
                   
				   <tbody>
						<c:forEach var="listValue" items="${informarma}">
						<tr>
						  <td>Definición</td>  
						  <td>${listValue.definition}</td>
				    	</tr>
				    	<tr>
						  <td>Tipo de Arma</td>  
						  <td>${listValue.type_of_weapon}</td>
				    	</tr>
				    	<tr>
						  <td>Nacionalidad</td>  
						  <td>${listValue.nationality}</td>
				    	</tr>
				    	<tr>
						  <td>Procedencia</td>  
						  <td>${listValue.origin}</td>
				    	</tr>
				    	<tr>
						  <td>Fecha de toma de datos</td>  
						  <td>${listValue.date}</td>
				    	</tr>
				    	<tr>
						  <td>Material</td>  
						  <td>${listValue.material}</td>
				    	</tr>
				    	<tr>
						  <td>Observaciones</td>  
						  <td>${listValue.observations}</td>
				    	</tr>
				    	<tr>
						  <td>Tipo de pieza</td>  
						  <td>${listValue.type_piece}</td>
				    	</tr>
						</c:forEach>
					
			</tbody>
			</table>
                
            </div>
        <h3>Tipo de Arma</h3>
        <div class="table-responsive">     
              <table id="mytable" class="table table-bordered table-striped">
				   <tbody>
				    <c:if test="${tipo_var=='OBJEX'}">
						<c:forEach var="listValue" items="${tipoarma}">
						<tr>
						 <td>Fecha de Excavación</td>
						  <td>${listValue.date}</td>
				    	</tr>
				    	<tr>
						 <td>Latitud</td>
						  <td>${listValue.latitude}</td>
				    	</tr>
				    	<tr>
						 <td>Longitud</td>
						  <td>${listValue.longitude}</td>
				    	</tr>
				    	<tr>
						 <td>Arqueólogo responsable</td>
						  <td>${listValue.archaeologist}</td>
				    	</tr>
				    	<tr>
						 <td>Estado de restauración</td>
						  <td>${listValue.restored}</td>
				    	</tr>
				    	<tr>
						 <td>Localización</td>
						  <td>${listValue.location}</td>
				    	</tr>
				    	<tr>
						 <td>Observaciones</td>
						  <td>${listValue.observations}</td>
				    	</tr>    	
						</c:forEach>
					</c:if>
					
					
					 <c:if test="${tipo_var=='PECIO'}">
						<c:forEach var="listValue" items="${tipoarma}">
						<tr>
						 <td>Estado del Pecio</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Fecha de localización</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Latitud</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Longitud</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Nombre del pecio</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Expediente o Referencia</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Organismo</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Situación Actual</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Autor del Informe</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Observaciones</td>
						  <td>${listValue}</td>
				    	</tr>
						</c:forEach>
					</c:if>
					
					 <c:if test="${tipo_var=='ARCHIVO'}">
						<c:forEach var="listValue" items="${tipoarma}">
						<tr>
						 <td>Nacionalidad</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Nombre del Archivo</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Autor</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Sección</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Legajo</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Fecha</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Descripción</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Imagen del Plano o Tabla</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Unidades Originales</td>
						  <td>${listValue}</td>
				    	</tr>
						</c:forEach>
					</c:if>
					
					<c:if test="${tipo_var=='BIBLIOTECA'}">
						<c:forEach var="listValue" items="${tipoarma}">
						<tr>
						 <td>Nacionalidad</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Título</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Autor</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Edición</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Descripción</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Imagen de la fotografía o Plano</td>
						  <td>${listValue}</td>
				    	</tr>
				    	<tr>
						 <td>Unidades Originales</td>
						  <td>${listValue}</td>
				    	</tr>
						</c:forEach>
					</c:if>
			</tbody>
			</table>      
         </div>
        
        <h3>Análisis Morfológico del Arma</h3>  
         <div class="table-responsive">     
              <table id="mytable" class="table table-bordered table-striped">
               <tbody>
                <c:if test="${not empty morfologico}">
				  <c:forEach var="listValue" items="${morfologico}">
						<tr>
						 <td>Número de cuerpos</td>
						  <td>${listValue.number_of_members}</td>
				    	</tr>
				    	<tr>
						 <td>Forma de muñones</td>
						  <td>${listValue.trunnion_form}</td>
				    	</tr>
				    	<tr>
						 <td>Forma del Brocal o Tulipa</td>
						  <td>${listValue.muzzle_form}</td>
				    	</tr>
				    	<tr>
						 <td>Cascabel</td>
						  <td>${listValue.cascabel}</td>
				    	</tr>
				    	<tr>
						 <td>Inscripción del muñon izquierdo</td>
						  <td>${listValue.inscription_left}</td>
				    	</tr>
				    	<tr>
						 <td>Inscripción del muñon derecho</td>
						  <td>${listValue.inscription_right}</td>
				    	</tr>
				    	<tr>
						 <td>Molduras de comienzo del primer cuerpo</td>
						  <td>${listValue.beginning_first_reinforce_moulding}</td>
				    	</tr>
				    	<tr>
						 <td>Anillos de refuerzo del primer cuerpo</td>
						  <td>${listValue.beginning_fisrt_reinforce_ring}</td>
				    	</tr>
				    	<tr>
						 <td>Molduras principio del segundo cuerpo</td>
						  <td>${listValue.begining_second_reinforce_moulding}</td>
				    	</tr>
				    	<tr>
						 <td>Molduras principio del tercer cuerpo</td>
						  <td>${listValue.beginning_chase_moulding}</td>
				    	</tr>
				    	<tr>
						 <td>Astrágalo</td>
						  <td>${listValue.muzzle_astragal}</td>
				    	</tr>
				    	<tr>
						 <td>Otros anillos de refuerzo</td>
						  <td>${listValue.other_reinforcing_rings}</td>
				    	</tr>
				    	<tr>
						 <td>Escudo de Armas</td>
						  <td>${listValue.coat_of_arms}</td>
				    	</tr>
				    	<tr>
						 <td>Observaciones</td>
						  <td>${listValue.observations}</td>
				    	</tr>
						</c:forEach>
			</c:if>
			</tbody>
			</table>
                
            </div>
        <h3>Medidas dimensionales del Arma</h3> 
        <div class="table-responsive">     
              <table id="mytable" class="table table-bordered table-striped">
                   
                   <thead>
                     <th>Medida</th>
                      <th>Valor</th>
                     
                   </thead>
				   <tbody>
				   
				   <c:if test="${not empty dimensional}">
						<c:forEach var="listValue" items="${dimensional}">
						  <tr>
						  <td>${listValue.description}</td>
						   <td>${listValue.value}</td>
				    	</tr>
						</c:forEach>
					</c:if>   
			</tbody>
			</table>
                
            </div>
            
        </div>
	</div>

</div> <!-- /container -->

</body>
</html>


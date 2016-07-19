<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		
      
        <div class="col-md-8">
        
  		<form:form id="form" modelAttribute="informacionarma" action="/WebApp/form_analisis_morfologico" method="post">
         
              <fieldset>
                  <form:label class="control-label" path="nacionalidad_arc">Nacionalidad del Archivo</form:label>
                  <form:input path="nacionalidad_arc"  class="col-sm-8  form-control"/>
              </fieldset>
              <fieldset>
                  <form:label class="control-label" path="nombre_arc">Nombre del Archivo</form:label>
                  <form:input path="nombre_arc" class="col-sm-8  form-control" />
              </fieldset>
              <fieldset>
                  <form:label path="autor_arc">Autor</form:label>
                  <form:input path="autor_arc" class="col-sm-8  form-control" />
              </fieldset>  
               <fieldset>
                  <form:label path="seccion_arc">Sección</form:label>
                  <form:input path="seccion_arc" class="col-sm-8  form-control" />
              </fieldset> 
              <fieldset>
                  <form:label path="legajo_arc">Legajo</form:label>
                  <form:input path="legajo_arc" class="col-sm-8  form-control"/>
              </fieldset> 
               <fieldset>
                  <form:label path="fecha_arc">Fecha del plano</form:label>
                  <form:input path="fecha_arc" class="col-sm-8  form-control" />
              </fieldset> 
              <fieldset>
                  <form:label path="descripcion_arc">Descripción</form:label>
                  <form:input path="descripcion_arc" class="col-sm-8  form-control" />
              </fieldset> 
              <fieldset>
                  <form:label path="imagen_arc">Imagen del plano</form:label>
                  <form:input path="imagen_arc" class="col-sm-8  form-control"/>
              </fieldset>          
               <fieldset>
                  <form:label path="unidades_arc">Unidades originales</form:label>
                  <form:input path="unidades_arc" class="col-sm-8  form-control" />
              </fieldset>  
              <br>
              <fieldset><!--   <td colspan="2"><input type="submit" value="Insertar" />--> <button type="submit" class="btn btn-primary">Siguiente</button></fieldset>
      </form:form>
      </div>
     </div>
     </div>
     </div>
     </div>
</body>
</html>
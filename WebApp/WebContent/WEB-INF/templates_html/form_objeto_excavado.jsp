<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Web Artillería de Avancarga</title>
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
                  <form:label class="control-label" path="latitud_obj_exc">Latitud</form:label>
                  <form:input path="latitud_obj_exc"  class="col-sm-8  form-control"/>
              </fieldset>
              <fieldset>
                  <form:label class="control-label" path="longitud_obj_exc">Longitud</form:label>
                  <form:input path="longitud_obj_exc" class="col-sm-8  form-control" />
              </fieldset>
              <fieldset>
                  <form:label path="arqueologos">Arqueologos</form:label>
                  <form:input path="arqueologos" class="col-sm-8  form-control" />
              </fieldset>  
               <fieldset>
                  <form:label path="estado_restauracion">Estado_restauracion</form:label>
                  <form:input path="estado_restauracion" class="col-sm-8  form-control" />
              </fieldset> 
              <fieldset>
                  <form:label path="localizacion_obj_exc">Localización</form:label>
                  <form:input path="localizacion_obj_exc" class="col-sm-8  form-control"/>
              </fieldset> 
               <fieldset>
                  <form:label path="fecha_obj_exc">Fecha toma de datos</form:label>
                  <form:input path="fecha_obj_exc" class="col-sm-8  form-control" />
              </fieldset> 
              <fieldset>
                  <form:label path="observaciones_obj_exc">Observaciones</form:label>
                  <form:input path="observaciones_obj_exc" class="col-sm-8  form-control"/>
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
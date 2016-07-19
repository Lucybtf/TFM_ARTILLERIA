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
 <script type=text/javascript>
function functionpath() {
/*	if(document.getElementById(num).checked){
		alert("El Id del Arma seleccionada es"+num);
	}
	var variable=document.getElementById(num).value
    	
	document.getElementById("myForm").submit();*/
	//window.location.href=window.location.href+"/form_biblioteca"
	
//	alert(num);
	var tipo_pieza = document.getElementById("tipo_pieza").value;
	alert(tipo_pieza);
	var form = document.getElementById("form");
	//var tipo=${tipo};
	if(tipo_pieza=='biblioteca')
	{//	alert("BIBLIOTEC");
		return  "/WebApp/form_biblioteca";
    	//form.submit();
		//window.location.href=window.location.href+"/form_biblioteca"
	}	
    if(tipo_pieza=='archivo')
    {    return  "/WebApp/form_archivo";
      // 	form.submit();
    	//window.location.href=window.location.href+"/form_archivo"
    }  	
    if(tipo_pieza=='pecio')
    {    return  "/WebApp/form_pecio";
       // form.submit();	
    	//window.location.href=window.location.href+"/form_pecio"
    }   
    if(tipo_pieza=='objeto excavado')
    {    return  "/WebApp/form_objeto_excavado";
         //form.submit();
    	//window.location.href=window.location.href+"/form_objeto_excavado"
    }
    //form.submit();
 }

</script>
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
       <!--  <c:set var="tipoarm" value="${tipo}" scope="request"/>-->
        <!-- action="/WebApp/form_analisis_morfologico"-->
       
  		<form:form id="form" modelAttribute="informacionarma" onsubmit="this.action=functionpath();"  method="post">
         
              <fieldset>
                  <form:label class="control-label" path="definicion">Definición del Arma</form:label>
                  <form:input path="definicion"  class="col-sm-8  form-control"/>
              </fieldset>
              <fieldset>
                  <form:label class="control-label" path="tipo_arma">Tipo de Arma</form:label>
                  <form:input path="tipo_arma" class="col-sm-8  form-control" />
              </fieldset>
              <fieldset>
                  <form:label path="calibre">Calibre</form:label>
                  <form:input path="calibre" class="col-sm-8  form-control" />
              </fieldset>  
               <fieldset>
                  <form:label path="nacionalidad">Nacionalidad</form:label>
                  <form:input path="nacionalidad" class="col-sm-8  form-control" />
              </fieldset> 
              <fieldset>
                  <form:label path="procedencia">Procedencia del Arma</form:label>
                  <form:input path="procedencia" class="col-sm-8  form-control"/>
              </fieldset> 
               <fieldset>
                  <form:label path="fecha_toma_datos">Fecha toma de datos</form:label>
                  <form:input path="fecha_toma_datos" class="col-sm-8  form-control" />
              </fieldset> 
              <fieldset>
                  <form:label path="material">Material</form:label>
                  <form:input path="material" class="col-sm-8  form-control" />
              </fieldset> 
              <fieldset>
                  <form:label path="observaciones">Observaciones</form:label>
                  <form:input path="observaciones" class="col-sm-8  form-control"/>
              </fieldset>          
               <fieldset>
                  <form:label path="tipo_pieza">Tipo de pieza</form:label>
                  <form:input id="tipo_pieza" path="tipo_pieza" class="col-sm-8  form-control" />
              </fieldset>  
              <br>
               <button type="submit" class="btn btn-primary" >Siguiente</button></fieldset>
      </form:form>
      </div>
     </div>
     </div>
     </div>
     </div>
</body>
</html>
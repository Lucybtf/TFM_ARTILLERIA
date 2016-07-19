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
          <a class="navbar-brand" href="#">Artiller�a App</a>
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
        <h1>Armas de Artiller�a</h1>
      </div>
      
		<div class="container">
    	<div class="row">
		
      
        <div class="col-md-8">
        
  		<form:form id="form" modelAttribute="informacionarma" action="/WebApp/resultado" method="post">
         
              <fieldset>
                  <form:label path="longitud">Longitud</form:label>
                  <form:input path="longitud"  class="col-sm-8  form-control"/>
              </fieldset>
              <fieldset>
                <form:label path="diametro_anima">Di�metro del �nima</form:label>
                <form:input path="diametro_anima"  class="col-sm-8  form-control" />
              </fieldset>
              <fieldset>
                 <form:label path="longitud_primer_cuerpo">Longitud del 1� Cuerpo</form:label>
                 <form:input path="longitud_primer_cuerpo"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                 <form:label path="diametro_mayor_primer_cuerpo">Di�metro mayor del 1� Cuerpo</form:label>
                 <form:input path="diametro_mayor_primer_cuerpo"  class="col-sm-8  form-control"/>
              </fieldset> 
              <fieldset>
                  <form:label path="diametro_menor_primer_cuerpo">Di�metro menor del 1� Cuerpo</form:label>
                  <form:input path="diametro_menor_primer_cuerpo"  class="col-sm-8  form-control"/>
              </fieldset> 
               <fieldset>
                  <form:label path="longitud_segundo_cuerpo">Longitud del 2� Cuerpo</form:label></td>
                  <form:input path="longitud_segundo_cuerpo"  class="col-sm-8  form-control"/>
              </fieldset> 
              <fieldset>
              	 <form:label path="diametro_mayor_segundo_cuerpo">Di�metro mayor del 2�Cuerpo</form:label>
                 <form:input path="diametro_mayor_segundo_cuerpo"  class="col-sm-8  form-control"/>           
              </fieldset> 
              <fieldset>
                  <form:label path="diametro_menor_segundo_cuerpo">Di�metro menor del 2�Cuerpo</form:label>
                  <form:input path="diametro_menor_segundo_cuerpo"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                  <form:label path="longitud_tercer_cuerpo">Longitud del 3� Cuerpo</form:label>
                  <form:input path="longitud_tercer_cuerpo"  class="col-sm-8  form-control" />
              </fieldset>  
              <fieldset>
                  <form:label path="diametro_mayor_tercer_cuerpo">Di�metro mayor del 3�Cuerpo</form:label>
                  <form:input path="diametro_mayor_tercer_cuerpo"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                  <form:label path="diametro_menor_tercer_cuerpo">Di�metro menor del 3�Cuerpo</form:label>
                  <form:input path="diametro_menor_tercer_cuerpo"  class="col-sm-8  form-control" />
              </fieldset>    
                <fieldset>
                  <form:label path="longitud_brocal">Longitud brocal o tulipa</form:label>
                  <form:input path="longitud_brocal"  class="col-sm-8  form-control" />
              </fieldset>    
                <fieldset>
                  <form:label path="distancia_eje">Distancia a eje de mu�ones</form:label>
                  <form:input path="distancia_eje"  class="col-sm-8  form-control" />
              </fieldset>  
              <fieldset>
                  <form:label path="distancia_teorica">Distancia a eje de mu�ones</form:label>
                  <form:input path="distancia_teorica"  class="col-sm-8  form-control"/>
              </fieldset>    
              <fieldset>
                  <form:label path="distancia_punto_medio">Distancia punto medio del segundo cuerpo</form:label>
                  <form:input path="distancia_punto_medio"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                  <form:label path="diametro_extremo_munones">Di�metro extremo de los mu�ones</form:label>
                  <form:input path="diametro_extremo_munones"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                  <form:label path="diametro_proximal_munones">Di�metro proximal de  los mu�ones</form:label>
                  <form:input path="diametro_proximal_munones"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                  <form:label path="longitud_total">Longitud total</form:label>
                  <form:input path="longitud_total"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                  <form:label path="diametro_culata">Di�metro de la culata</form:label>
                  <form:input path="diametro_culata"  class="col-sm-8  form-control"/>
              </fieldset>   
                <fieldset>
                  <form:label path="espejo">Di�metro de espejo de fuego</form:label>
                  <form:input path="espejo"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                  <form:label path="diametro_maximo_tulipa">Di�metro m�ximo de la tulipa</form:label>
                  <form:input path="diametro_maximo_tulipa"  class="col-sm-8  form-control"/>
              </fieldset>   
               <fieldset>
                <form:label path="diametro_brocal">Di�metro del brocal o tulipa</form:label>
                <form:input path="diametro_brocal"  class="col-sm-8  form-control"/>
              </tr>    
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
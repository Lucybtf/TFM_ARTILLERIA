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
        
  		<form:form id="form" modelAttribute="informacionarma" action="/WebApp/form_medidas_dimensionales" method="post">
         
              <fieldset>
                  <form:label path="num_cuerpos">N�mero de cuerpos</form:label>
                  <form:input path="num_cuerpos"  class="col-sm-8  form-control" />
              </fieldset>
              <fieldset>
                <form:label path="forma_munones">Forma de mu�ones</form:label>
                <form:input path="forma_munones"  class="col-sm-8  form-control"/>
              </fieldset>
              <fieldset>
                 <form:label path="form_brocal_tulipa">Forma de brocal o tulipa</form:label>
                 <form:input path="form_brocal_tulipa"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                 <form:label path="cascabel">Cascabel</form:label>
                 <form:input path="cascabel"  class="col-sm-8  form-control"/>
              </fieldset> 
              <fieldset>
                  <form:label path="inscripcion_munon_izq">Inscripci�n del mu�on izquierdo</form:label>
                  <form:input path="inscripcion_munon_izq"  class="col-sm-8  form-control"/>
              </fieldset> 
               <fieldset>
                  <form:label path="inscripcion_munon_der">Inscripci�n del mu�on derecho</form:label></td>
                  <form:input path="inscripcion_munon_der"  class="col-sm-8  form-control"/>
              </fieldset> 
              <fieldset>
              	 <form:label path="molduras_comienzo_primer_cuerpo">Molduras comienzo del primer cuerpo</form:label>
                 <form:input path="molduras_comienzo_primer_cuerpo"  class="col-sm-8  form-control"/>           
              </fieldset> 
              <fieldset>
                  <form:label path="anillo_refuerzo_primer_cuerpo">Anillo de refuerzo del primer cuerpo</form:label>
                  <form:input path="anillo_refuerzo_primer_cuerpo"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                  <form:label path="molduras_principio_segundo_cuerpo">Molduras del principio del segundo cuerpo</form:label>
                  <form:input path="molduras_principio_segundo_cuerpo"  class="col-sm-8  form-control"/>
              </fieldset>  
              <fieldset>
                  <form:label path="molduras_principio_tercer_cuerpo">Molduras principio del tercer cuerpo</form:label>
                  <form:input path="molduras_principio_tercer_cuerpo"  class="col-sm-8  form-control" />
              </fieldset>  
              <fieldset>
                  <form:label path="anillo_union_brocal_astragalo">Astr�galo</form:label>
                  <form:input path="anillo_union_brocal_astragalo"  class="col-sm-8  form-control" />
              </fieldset>  
              <fieldset>
                  <form:label path="otros_anillos">Otros anillos de refuerzo</form:label>
                  <form:input path="otros_anillos"  class="col-sm-8  form-control" />
              </fieldset>  
              <fieldset>
                  <form:label path="escudo_armas">Escudo de armas</form:label>
                  <form:input path="escudo_armas"  class="col-sm-8  form-control"/></td>
              </fieldset>          
               <fieldset>
                  <form:label path="observaciones_analisismorf">Observaciones</form:label>
                  <form:input path="observaciones_analisismorf" class="col-sm-8  form-control" />
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
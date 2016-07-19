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
		
      
        <div class="col-md-12">
         <table>
          <tr>
              <td>Definición</td>
              <td>${informacionarma.definicion}</td>
          </tr>
          <tr>
              <td>Tipo de Arma</td>
              <td>${informacionarma.tipo_arma}</td>
          </tr>
          <tr>
              <td>Nacionalidad</td>
              <td>${informacionarma.nacionalidad}</td>
          </tr>
          
           <tr>
              <td>Procedencia del Arma</td>
              <td>${informacionarma.procedencia}</td>
          </tr>
           <tr>
              <td>Fecha de toma de datos</td>
              <td>${informacionarma.calibre}</td>
          </tr>
           <tr>
              <td>Material</td>
              <td>${informacionarma.material}</td>
          </tr> 
          <tr>
              <td>Observaciones</td>
              <td>${informacionarma.observaciones}</td>
          </tr>
           <tr>
              <td>Tipo de pieza</td>
              <td>${informacionarma.tipo_pieza}</td>
          </tr>
          </table>
          <h2>Pecio</h2>
          <table>
          <tr>
              <td>Estado del Pecio</td>
              <td>${informacionarma.estado_pecio}</td>
          </tr>
          <tr>
              <td>Fecha de localización</td>
              <td>${informacionarma.fecha_pecio_localizacion}</td>
          </tr>
          <tr>
              <td>Latitud</td>
              <td>${informacionarma.latitud_pecio}</td>
          </tr>
          <tr>
              <td>Longitud</td>
              <td>${informacionarma.longitud_pecio}</td>
          </tr>
          <tr>
              <td>Nombre del Pecio</td>
              <td>${informacionarma.nombre_pecio}</td>
          </tr>
          <tr>
              <td>Expediente</td>
              <td>${informacionarma.expediente}</td>
          </tr>
            <tr>
              <td>Organismo</td>
              <td>${informacionarma.organismo}</td>
          </tr>
            <tr>
              <td>Situación Actual</td>
              <td>${informacionarma.situacion_actual}</td>
          </tr>
            <tr>
              <td>Observaciones</td>
              <td>${informacionarma.observaciones_pecio}</td>
          </tr>
          </table>
         
          <h2>Objeto excavado</h2>
           <table>
          <tr>
              <td>Fecha</td>
              <td>${informacionarma.fecha_obj_exc}</td>
          </tr>
          <tr>
              <td>Latitud</td>
              <td>${informacionarma.latitud_obj_exc}</td>
          </tr>
          <tr>
              <td>Longitud</td>
              <td>${informacionarma.longitud_obj_exc}</td>
          </tr>
          <tr>
              <td>Arqueologos responsables</td>
              <td>${informacionarma.arqueologos}</td>
          </tr>
          <tr>
              <td>Estado de restauracion</td>
              <td>${informacionarma.estado_restauracion}</td>
          </tr>
           <tr>
              <td>Localización</td>
              <td>${informacionarma.localizacion_obj_exc}</td>
          </tr>
           <tr>
              <td>Observaciones</td>
              <td>${informacionarma.observaciones_obj_exc}</td>
          </tr>
          </table>
           <h2>Biblioteca</h2>
          <table>
          <tr>
              <td>Nacionalidad</td>
              <td>${informacionarma.nacionalidad_bib}</td>
          </tr>
          <tr>
              <td>Título</td>
              <td>${informacionarma.titulo_bib}</td>
          </tr>
          <tr>
              <td>Autor</td>
              <td>${informacionarma.autor_bib}</td>
          </tr>
          <tr>
              <td>Edición</td>
              <td>${informacionarma.edicion_bib}</td>
          </tr>
          <tr>
              <td>Descripción</td>
              <td>${informacionarma.descripcion_bib}</td>
          </tr>
          <tr>
              <td>Imagen</td>
              <td>${informacionarma.imagen_bib}</td>
          </tr>
          <tr>
              <td>Unidades</td>
              <td>${informacionarma.unidades_bib}</td>
          </tr>
          </table>
         
           <h2>Archivo</h2>
          <table>
          <tr>
              <td>Nacionalidad</td>
              <td>${informacionarma.nacionalidad_arc}</td>
          </tr>
           <tr>
              <td>Nombre</td>
              <td>${informacionarma.nombre_arc}</td>
          </tr>
           <tr>
              <td>Autor</td>
              <td>${informacionarma.autor_arc}</td>
          </tr>
           <tr>
              <td>Sección</td>
              <td>${informacionarma.seccion_arc}</td>
          </tr>
           <tr>
              <td>Legajo</td>
              <td>${informacionarma.legajo_arc}</td>
          </tr>
           <tr>
              <td>Fecha</td>
              <td>${informacionarma.fecha_arc}</td>
          </tr>
           <tr>
              <td>Descripción</td>
              <td>${informacionarma.descripcion_arc}</td>
          </tr>
            <tr>
              <td>Imagen del Plano o Tabla</td>
              <td>${informacionarma.imagen_arc}</td>
          </tr>
            <tr>
              <td>Unidades Originales</td>
              <td>${informacionarma.unidades_arc}</td>
          </tr>
          </table>
         
          <h2>Analisis Morfologico</h2>
           <table>
           <tr>
              <td>Número de cuerpos</td>
              <td>${informacionarma.num_cuerpos}</td>
          </tr>
           <tr>
              <td>Forma de muñones</td>
              <td>${informacionarma.forma_munones}</td>
          </tr>
           <tr>
              <td>Forma del Brocal o Tulipa</td>
              <td>${informacionarma.form_brocal_tulipa}</td>
          </tr>
           <tr>
              <td>Cascabel</td>
              <td>${informacionarma.cascabel}</td>
          </tr>
           <tr>
              <td>Inscripción del muñon izquierdo</td>
              <td>${informacionarma.inscripcion_munon_izq}</td>
          </tr>
          <tr>
              <td>Inscripción del muñon derecho</td>
              <td>${informacionarma.inscripcion_munon_der}</td>
          </tr>
           <tr>
              <td>Molduras de comienzo del primer cuerpo</td>
              <td>${informacionarma.molduras_comienzo_primer_cuerpo}</td>
          </tr>
           <tr>
              <td>Anillos de refuerzo del primer cuerpo</td>
              <td>${informacionarma.anillo_refuerzo_primer_cuerpo}</td>
          </tr>
           <tr>
              <td>Molduras principio del segundo cuerpo</td>
              <td>${informacionarma.molduras_principio_segundo_cuerpo}</td>
          </tr>
           <tr>
              <td>Molduras principio del tercer cuerpo</td>
              <td>${informacionarma.molduras_principio_tercer_cuerpo}</td>
          </tr>
           <tr>
              <td>Astrágalo</td>
              <td>${informacionarma.anillo_union_brocal_astragalo}</td>
          </tr>
           <tr>
              <td>Otros anillos de refuerzo</td>
              <td>${informacionarma.otros_anillos}</td>
          </tr>
           <tr>
              <td>Escudo de Armas</td>
              <td>${informacionarma.escudo_armas}</td>
          </tr>
           <tr>
              <td>Observaciones</td>
              <td>${informacionarma.observaciones_analisismorf}</td>
          </tr>
          </table>
          <h1>Medidas Dimensionales</h1>
           <table>
           <tr>
              <td>Longitud</td>
              <td>${informacionarma.longitud}</td>
          </tr>
           <tr>
              <td>Diámetro del Ánima</td>
              <td>${informacionarma.diametro_anima}</td>
          </tr>
           <tr>
              <td>Longitud del 1º Cuerpo</td>
              <td>${informacionarma.longitud_primer_cuerpo}</td>
          </tr>
           <tr>
              <td>Diámetro mayor del 1º Cuerpo</td>
              <td>${informacionarma.diametro_mayor_primer_cuerpo}</td>
          </tr>
           <tr>
              <td>Diámetro menor del 1º Cuerpo</td>
              <td>${informacionarma.diametro_menor_primer_cuerpo}</td>
          </tr>
           <tr>
              <td>Longitud del 2º Cuerpo</td>
              <td>${informacionarma.longitud_segundo_cuerpo}</td>
          </tr>
           <tr>
              <td>Diámetro mayor del 2º Cuerpo</td>
              <td>${informacionarma.diametro_mayor_segundo_cuerpo}</td>
          </tr>
           <tr>
              <td>Diámetro menor del 2º Cuerpo</td>
              <td>${informacionarma.diametro_menor_segundo_cuerpo}</td>
          </tr>
           <tr>
              <td>Longitud del 3º Cuerpo</td>
              <td>${informacionarma.longitud_tercer_cuerpo}</td>
          </tr>
           <tr>
              <td>Diámetro mayor del 3º Cuerpo</td>
              <td>${informacionarma.diametro_mayor_tercer_cuerpo}</td>
          </tr>
           <tr>
              <td>Diámetro menor del 3º Cuerpo</td>
              <td>${informacionarma.diametro_menor_tercer_cuerpo}</td>
          </tr>
           <tr>
              <td>Longitud del brocal o tulipa</td>
              <td>${informacionarma.longitud_brocal}</td>
          </tr>
           <tr>
              <td>Distancia a eje de muñones</td>
              <td>${informacionarma.distancia_eje}</td>
          </tr>
           <tr>
              <td>Distancia teórica a 3/7 de longitud</td>
              <td>${informacionarma.distancia_teorica}</td>
          </tr>
           <tr>
              <td>Distancia al punto medio del 2º Cuerpo</td>
              <td>${informacionarma.distancia_punto_medio}</td>
          </tr> 
          <tr>
              <td>Diámetro extremo de los muñones</td>
              <td>${informacionarma.diametro_extremo_munones}</td>
          </tr>
           <tr>
              <td>Diámetro proximal de los muñones</td>
              <td>${informacionarma.diametro_proximal_munones}</td>
          </tr>
           <tr>
              <td>Longitud total</td>
              <td>${informacionarma.longitud_total}</td>
          </tr>
           <tr>
              <td>Diámetro de la culata</td>
              <td>${informacionarma.diametro_culata}</td>
          </tr>
           <tr>
              <td>Diámetro de espejo de fuego</td>
              <td>${informacionarma.espejo}</td>
          </tr>
           <tr>
              <td>Diámetro máximo de la tulipa</td>
              <td>${informacionarma.diametro_maximo_tulipa}</td>
          </tr>
           <tr>
              <td>Diámetro del brocal o tulipa</td>
              <td>${informacionarma.diametro_brocal}</td>
          </tr>
      </table>
  
      </div>
     </div>
     </div>
     </div>
     </div>
</body>
</html>
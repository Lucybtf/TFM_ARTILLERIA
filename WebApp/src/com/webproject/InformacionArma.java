package com.webproject;
import java.util.Date;

public class InformacionArma {
	private String definicion;
	private String tipo_arma;
	private String calibre;
	private String nacionalidad;
	private String procedencia;
	private Date fecha_toma_datos;
	private String material;
	private String observaciones;
	private String tipo_pieza;
	
	private Integer num_cuerpos;
	private String forma_munones;
	private String form_brocal_tulipa;
	private String cascabel;
	private String inscripcion_munon_der;
	private String inscripcion_munon_izq;
	private String molduras_comienzo_primer_cuerpo;
	private String anillo_refuerzo_primer_cuerpo;
	private String molduras_principio_segundo_cuerpo;
	private String molduras_principio_tercer_cuerpo;
	private String anillo_union_brocal_astragalo;
	private String otros_anillos;
	private String escudo_armas;
	private String observaciones_analisismorf;
	
	private float longitud;
	private float diametro_anima;
	private float longitud_primer_cuerpo;
	private float diametro_mayor_primer_cuerpo;
	private float diametro_menor_primer_cuerpo;
	private float longitud_segundo_cuerpo;
	private float diametro_mayor_segundo_cuerpo;
	private float diametro_menor_segundo_cuerpo;
	private float longitud_tercer_cuerpo;
	private float diametro_mayor_tercer_cuerpo;
	private float diametro_menor_tercer_cuerpo;
	private float longitud_brocal;
	private float distancia_eje;
	private float distancia_teorica;
	private float distancia_punto_medio;
	private float diametro_extremo_munones;
	private float diametro_proximal_munones;
	private float longitud_total;
	private float diametro_culata;
	private float espejo;
	private float diametro_maximo_tulipa;
	private float diametro_brocal;
	
	/*PECIO*/
	private String estado_pecio;
	private String fecha_pecio_localizacion;
	private float latitud_pecio;
	private float longitud_pecio;
	private String nombre_pecio;
	private String expediente;
	private String organismo;
	private String situacion_actual;
	private String observaciones_pecio;
	
	public String getEstado_pecio() {
		return estado_pecio;
	}
	public void setEstado_pecio(String estado_pecio) {
		this.estado_pecio = estado_pecio;
	}
	public String getFecha_pecio_localizacion() {
		return fecha_pecio_localizacion;
	}
	public void setFecha_pecio_localizacion(String fecha_pecio_localizacion) {
		this.fecha_pecio_localizacion = fecha_pecio_localizacion;
	}
	public float getLatitud_pecio() {
		return latitud_pecio;
	}
	public void setLatitud_pecio(float latitud_pecio) {
		this.latitud_pecio = latitud_pecio;
	}
	public float getLongitud_pecio() {
		return longitud_pecio;
	}
	public void setLongitud_pecio(float longitud_pecio) {
		this.longitud_pecio = longitud_pecio;
	}
	public String getNombre_pecio() {
		return nombre_pecio;
	}
	public void setNombre_pecio(String nombre_pecio) {
		this.nombre_pecio = nombre_pecio;
	}
	public String getExpediente() {
		return expediente;
	}
	public void setExpediente(String expediente) {
		this.expediente = expediente;
	}
	public String getOrganismo() {
		return organismo;
	}
	public void setOrganismo(String organismo) {
		this.organismo = organismo;
	}
	public String getSituacion_actual() {
		return situacion_actual;
	}
	public void setSituacion_actual(String situacion_actual) {
		this.situacion_actual = situacion_actual;
	}
	public String getObservaciones_pecio() {
		return observaciones_pecio;
	}
	public void setObservaciones_pecio(String observaciones_pecio) {
		this.observaciones_pecio = observaciones_pecio;
	}
	
	
	/*OBJ EXCAVADO*/
	
	private String fecha_obj_exc;
	public String getFecha_obj_exc() {
		return fecha_obj_exc;
	}
	public void setFecha_obj_exc(String fecha_obj_exc) {
		this.fecha_obj_exc = fecha_obj_exc;
	}
	public float getLatitud_obj_exc() {
		return latitud_obj_exc;
	}
	public void setLatitud_obj_exc(float latitud_obj_exc) {
		this.latitud_obj_exc = latitud_obj_exc;
	}
	public float getLongitud_obj_exc() {
		return longitud_obj_exc;
	}
	public void setLongitud_obj_exc(float longitud_obj_exc) {
		this.longitud_obj_exc = longitud_obj_exc;
	}
	public String getArqueologos() {
		return arqueologos;
	}
	public void setArqueologos(String arqueologos) {
		this.arqueologos = arqueologos;
	}
	public String getEstado_restauracion() {
		return estado_restauracion;
	}
	public void setEstado_restauracion(String estado_restauracion) {
		this.estado_restauracion = estado_restauracion;
	}
	public String getLocalizacion_obj_exc() {
		return localizacion_obj_exc;
	}
	public void setLocalizacion_obj_exc(String localizacion_obj_exc) {
		this.localizacion_obj_exc = localizacion_obj_exc;
	}
	public String getObservaciones_obj_exc() {
		return observaciones_obj_exc;
	}
	public void setObservaciones_obj_exc(String observaciones_obj_exc) {
		this.observaciones_obj_exc = observaciones_obj_exc;
	}
	public String getNacionalidad_bib() {
		return nacionalidad_bib;
	}
	public void setNacionalidad_bib(String nacionalidad_bib) {
		this.nacionalidad_bib = nacionalidad_bib;
	}
	public String getTitulo_bib() {
		return titulo_bib;
	}
	public void setTitulo_bib(String titulo_bib) {
		this.titulo_bib = titulo_bib;
	}
	public String getAutor_bib() {
		return autor_bib;
	}
	public void setAutor_bib(String autor_bib) {
		this.autor_bib = autor_bib;
	}
	public String getEdicion_bib() {
		return edicion_bib;
	}
	public void setEdicion_bib(String edicion_bib) {
		this.edicion_bib = edicion_bib;
	}
	public String getDescripcion_bib() {
		return descripcion_bib;
	}
	public void setDescripcion_bib(String descripcion_bib) {
		this.descripcion_bib = descripcion_bib;
	}
	public String getImagen_bib() {
		return imagen_bib;
	}
	public void setImagen_bib(String imagen_bib) {
		this.imagen_bib = imagen_bib;
	}
	public String getUnidades_bib() {
		return unidades_bib;
	}
	public void setUnidades_bib(String unidades_bib) {
		this.unidades_bib = unidades_bib;
	}


	private float latitud_obj_exc;
	private float longitud_obj_exc;
	private String arqueologos;
	private String estado_restauracion;
	private String localizacion_obj_exc;
	private String observaciones_obj_exc;
	
	/*BIBLIOTECA*/
	private String nacionalidad_bib;
	private String titulo_bib;
	private String autor_bib;
	private String edicion_bib;
	private String descripcion_bib;
	private String imagen_bib;
	private String unidades_bib;
	
	
	/*ARCHIVO*/
	
	private String nacionalidad_arc;
	private String nombre_arc;
	private String autor_arc;
	private String seccion_arc;
	private String legajo_arc;
	private String fecha_arc;
	private String descripcion_arc;
	private String imagen_arc;
	private String unidades_arc;
	
	
	public String getNacionalidad_arc() {
		return nacionalidad_arc;
	}
	public void setNacionalidad_arc(String nacionalidad_arc) {
		this.nacionalidad_arc = nacionalidad_arc;
	}
	public String getNombre_arc() {
		return nombre_arc;
	}
	public void setNombre_arc(String nombre_arc) {
		this.nombre_arc = nombre_arc;
	}
	public String getAutor_arc() {
		return autor_arc;
	}
	public void setAutor_arc(String autor_arc) {
		this.autor_arc = autor_arc;
	}
	public String getSeccion_arc() {
		return seccion_arc;
	}
	public void setSeccion_arc(String seccion_arc) {
		this.seccion_arc = seccion_arc;
	}
	public String getLegajo_arc() {
		return legajo_arc;
	}
	public void setLegajo_arc(String legajo_arc) {
		this.legajo_arc = legajo_arc;
	}
	public String getFecha_arc() {
		return fecha_arc;
	}
	public void setFecha_arc(String fecha_arc) {
		this.fecha_arc = fecha_arc;
	}
	public String getDescripcion_arc() {
		return descripcion_arc;
	}
	public void setDescripcion_arc(String descripcion_arc) {
		this.descripcion_arc = descripcion_arc;
	}
	public String getImagen_arc() {
		return imagen_arc;
	}
	public void setImagen_arc(String imagen_arc) {
		this.imagen_arc = imagen_arc;
	}
	public String getUnidades_arc() {
		return unidades_arc;
	}
	public void setUnidades_arc(String unidades_arc) {
		this.unidades_arc = unidades_arc;
	}

	
	

	public String getDefinicion() {
		return definicion;
	}
	public void setDefinicion(String definicion) {
		this.definicion = definicion;
	}
	public String getTipo_arma() {
		return tipo_arma;
	}
	public void setTipo_arma(String tipo_arma) {
		this.tipo_arma = tipo_arma;
	}
	public String getCalibre() {
		return calibre;
	}
	public void setCalibre(String calibre) {
		this.calibre = calibre;
	}
	public String getNacionalidad() {
		return nacionalidad;
	}
	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}
	public String getProcedencia() {
		return procedencia;
	}
	public void setProcedencia(String procedencia) {
		this.procedencia = procedencia;
	}
	public Date getFecha_toma_datos() {
		return fecha_toma_datos;
	}
	public void setFecha_toma_datos(Date fecha_toma_datos) {
		this.fecha_toma_datos = fecha_toma_datos;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	public String getTipo_pieza() {
		return tipo_pieza;
	}
	public void setTipo_pieza(String tipo_pieza) {
		this.tipo_pieza = tipo_pieza;
	}
	public Integer getNum_cuerpos() {
		return num_cuerpos;
	}
	public void setNum_cuerpos(Integer num_cuerpos) {
		this.num_cuerpos = num_cuerpos;
	}
	public String getForma_munones() {
		return forma_munones;
	}
	public void setForma_munones(String forma_munones) {
		this.forma_munones = forma_munones;
	}
	public String getForm_brocal_tulipa() {
		return form_brocal_tulipa;
	}
	public void setForm_brocal_tulipa(String form_brocal_tulipa) {
		this.form_brocal_tulipa = form_brocal_tulipa;
	}
	public String getCascabel() {
		return cascabel;
	}
	public void setCascabel(String cascabel) {
		this.cascabel = cascabel;
	}
	public String getInscripcion_munon_der() {
		return inscripcion_munon_der;
	}
	public void setInscripcion_munon_der(String inscripcion_munon_der) {
		this.inscripcion_munon_der = inscripcion_munon_der;
	}
	public String getInscripcion_munon_izq() {
		return inscripcion_munon_izq;
	}
	public void setInscripcion_munon_izq(String inscripcion_munon_izq) {
		this.inscripcion_munon_izq = inscripcion_munon_izq;
	}
	public String getMolduras_comienzo_primer_cuerpo() {
		return molduras_comienzo_primer_cuerpo;
	}
	public void setMolduras_comienzo_primer_cuerpo(String molduras_comienzo_primer_cuerpo) {
		this.molduras_comienzo_primer_cuerpo = molduras_comienzo_primer_cuerpo;
	}
	public String getAnillo_refuerzo_primer_cuerpo() {
		return anillo_refuerzo_primer_cuerpo;
	}
	public void setAnillo_refuerzo_primer_cuerpo(String anillo_refuerzo_primer_cuerpo) {
		this.anillo_refuerzo_primer_cuerpo = anillo_refuerzo_primer_cuerpo;
	}
	public String getMolduras_principio_segundo_cuerpo() {
		return molduras_principio_segundo_cuerpo;
	}
	public void setMolduras_principio_segundo_cuerpo(String molduras_principio_segundo_cuerpo) {
		this.molduras_principio_segundo_cuerpo = molduras_principio_segundo_cuerpo;
	}
	public String getMolduras_principio_tercer_cuerpo() {
		return molduras_principio_tercer_cuerpo;
	}
	public void setMolduras_principio_tercer_cuerpo(String molduras_principio_tercer_cuerpo) {
		this.molduras_principio_tercer_cuerpo = molduras_principio_tercer_cuerpo;
	}
	public String getAnillo_union_brocal_astragalo() {
		return anillo_union_brocal_astragalo;
	}
	public void setAnillo_union_brocal_astragalo(String anillo_union_brocal_astragalo) {
		this.anillo_union_brocal_astragalo = anillo_union_brocal_astragalo;
	}
	public String getOtros_anillos() {
		return otros_anillos;
	}
	public void setOtros_anillos(String otros_anillos) {
		this.otros_anillos = otros_anillos;
	}
	public String getEscudo_armas() {
		return escudo_armas;
	}
	public void setEscudo_armas(String escudo_armas) {
		this.escudo_armas = escudo_armas;
	}
	public String getObservaciones_analisismorf() {
		return observaciones_analisismorf;
	}
	public void setObservaciones_analisismorf(String observaciones_analisismorf) {
		this.observaciones_analisismorf = observaciones_analisismorf;
	}
	public float getLongitud() {
		return longitud;
	}
	public void setLongitud(float longitud) {
		this.longitud = longitud;
	}
	public float getDiametro_anima() {
		return diametro_anima;
	}
	public void setDiametro_anima(float diametro_anima) {
		this.diametro_anima = diametro_anima;
	}
	public float getLongitud_primer_cuerpo() {
		return longitud_primer_cuerpo;
	}
	public void setLongitud_primer_cuerpo(float longitud_primer_cuerpo) {
		this.longitud_primer_cuerpo = longitud_primer_cuerpo;
	}
	public float getDiametro_mayor_primer_cuerpo() {
		return diametro_mayor_primer_cuerpo;
	}
	public void setDiametro_mayor_primer_cuerpo(float diametro_mayor_primer_cuerpo) {
		this.diametro_mayor_primer_cuerpo = diametro_mayor_primer_cuerpo;
	}
	public float getDiametro_menor_primer_cuerpo() {
		return diametro_menor_primer_cuerpo;
	}
	public void setDiametro_menor_primer_cuerpo(float diametro_menor_primer_cuerpo) {
		this.diametro_menor_primer_cuerpo = diametro_menor_primer_cuerpo;
	}
	public float getLongitud_segundo_cuerpo() {
		return longitud_segundo_cuerpo;
	}
	public void setLongitud_segundo_cuerpo(float longitud_segundo_cuerpo) {
		this.longitud_segundo_cuerpo = longitud_segundo_cuerpo;
	}
	public float getDiametro_mayor_segundo_cuerpo() {
		return diametro_mayor_segundo_cuerpo;
	}
	public void setDiametro_mayor_segundo_cuerpo(float diametro_mayor_segundo_cuerpo) {
		this.diametro_mayor_segundo_cuerpo = diametro_mayor_segundo_cuerpo;
	}
	public float getDiametro_menor_segundo_cuerpo() {
		return diametro_menor_segundo_cuerpo;
	}
	public void setDiametro_menor_segundo_cuerpo(float diametro_menor_segundo_cuerpo) {
		this.diametro_menor_segundo_cuerpo = diametro_menor_segundo_cuerpo;
	}
	public float getLongitud_tercer_cuerpo() {
		return longitud_tercer_cuerpo;
	}
	public void setLongitud_tercer_cuerpo(float longitud_tercer_cuerpo) {
		this.longitud_tercer_cuerpo = longitud_tercer_cuerpo;
	}
	public float getDiametro_mayor_tercer_cuerpo() {
		return diametro_mayor_tercer_cuerpo;
	}
	public void setDiametro_mayor_tercer_cuerpo(float diametro_mayor_tercer_cuerpo) {
		this.diametro_mayor_tercer_cuerpo = diametro_mayor_tercer_cuerpo;
	}
	public float getDiametro_menor_tercer_cuerpo() {
		return diametro_menor_tercer_cuerpo;
	}
	public void setDiametro_menor_tercer_cuerpo(float diametro_menor_tercer_cuerpo) {
		this.diametro_menor_tercer_cuerpo = diametro_menor_tercer_cuerpo;
	}
	public float getLongitud_brocal() {
		return longitud_brocal;
	}
	public void setLongitud_brocal(float longitud_brocal) {
		this.longitud_brocal = longitud_brocal;
	}
	public float getDistancia_eje() {
		return distancia_eje;
	}
	public void setDistancia_eje(float distancia_eje) {
		this.distancia_eje = distancia_eje;
	}
	public float getDistancia_teorica() {
		return distancia_teorica;
	}
	public void setDistancia_teorica(float distancia_teorica) {
		this.distancia_teorica = distancia_teorica;
	}
	public float getDistancia_punto_medio() {
		return distancia_punto_medio;
	}
	public void setDistancia_punto_medio(float distancia_punto_medio) {
		this.distancia_punto_medio = distancia_punto_medio;
	}
	public float getDiametro_extremo_munones() {
		return diametro_extremo_munones;
	}
	public void setDiametro_extremo_munones(float diametro_extremo_munones) {
		this.diametro_extremo_munones = diametro_extremo_munones;
	}
	public float getDiametro_proximal_munones() {
		return diametro_proximal_munones;
	}
	public void setDiametro_proximal_munones(float diametro_proximal_munones) {
		this.diametro_proximal_munones = diametro_proximal_munones;
	}
	public float getLongitud_total() {
		return longitud_total;
	}
	public void setLongitud_total(float longitud_total) {
		this.longitud_total = longitud_total;
	}
	public float getDiametro_culata() {
		return diametro_culata;
	}
	public void setDiametro_culata(float diametro_culata) {
		this.diametro_culata = diametro_culata;
	}
	public float getEspejo() {
		return espejo;
	}
	public void setEspejo(float espejo) {
		this.espejo = espejo;
	}
	public float getDiametro_maximo_tulipa() {
		return diametro_maximo_tulipa;
	}
	public void setDiametro_maximo_tulipa(float diametro_maximo_tulipa) {
		this.diametro_maximo_tulipa = diametro_maximo_tulipa;
	}
	public float getDiametro_brocal() {
		return diametro_brocal;
	}
	public void setDiametro_brocal(float diametro_brocal) {
		this.diametro_brocal = diametro_brocal;
	}
	
	
	

}

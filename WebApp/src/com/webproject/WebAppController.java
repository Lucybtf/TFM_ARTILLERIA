package com.webproject;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

//import org.springframework.*;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContext;

import com.webproject.QueryEndpoint;

@Controller
@RequestMapping("/")
@SessionAttributes("informacionarma")
public class WebAppController {


	String preffixes="PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>"
			+ "PREFIX skos: <http://www.w3.org/2004/02/skos/core#>"
			+ "PREFIX awv: <http://lod.uca.es/neologism/awv#>"
			+ "PREFIX dbpedia-owl: <http://dbpedia.org/ontology/>"
			+ "PREFIX qudt: <http://qudt.org/schema/qudt#>"
			+ "PREFIX msr: <http://www.telegraphis.net/ontology/measurement/measurement#>"
			+ "PREFIX dc: <http://purl.org/dc/elements/1.1/>"
			+ "PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#>";
	
	@RequestMapping("/")
	public  ModelAndView getdata(){
		String queryString= preffixes+ "SELECT (str(?weapon_id) as ?weapon_identifier) ?definition ?type_of_weapon ?calibre_A ?nationality ?origin ?date ?material ?observations ?type_piece"
				+ " WHERE {"
				+ " ?weapon_basic_information  rdf:type awv:weapon_basic_information;"
				+ "awv:weapon_identifier ?weapon_id;"
				+ "awv:calibre_of_A ?calibre_A;"
				+ "skos:definition ?definition;"
				+ "awv:type_of_weapon ?type_of_weapon;"
				+ " awv:type_of_piece ?type_piece."
				+ "OPTIONAL { ?weapon_basic_information awv:place_of_origin ?origin. }"
				+ "OPTIONAL { ?weapon_basic_information awv:material ?material. }"
				+ "OPTIONAL { ?weapon_basic_information dbpedia-owl:nationality ?nationality. }"
				+ "OPTIONAL {  ?weapon_basic_information  awv:date_of_collection ?date. }"
				+ "OPTIONAL { ?weapon_basic_information  awv:observations ?observations. }"
				+"}";
				
		QueryEndpoint query=new QueryEndpoint();
		List<Map<String, String>> p=query.QueryEndpointSelect(queryString);
		
		/*for(int i=0; i< p.size();i++){
			//System.out.println(i);
			System.out.println(i+" "+p.get(i)+ "\n");
		}*/
		//System.out.println(results);
		ModelAndView model = new ModelAndView("index");
		model.addObject("lists", p);
		
		return model;
	   }
	
	
	public int getLast(){
		String queryString=preffixes+ "SELECT (str(?weapon_identifier) as ?id) WHERE {"
									+ "?weapon_basic_information  rdf:type awv:weapon_basic_information;" 
									+ "awv:weapon_identifier ?weapon_identifier."+ "}ORDER BY DESC(?weapon_identifier) LIMIT 1";
		QueryEndpoint query=new QueryEndpoint();
		List<Map<String, String>> p=query.QueryEndpointSelect(queryString);
		System.out.println(p.get(0).get("id"));
		return Integer.parseInt(p.get(0).get("id"));
		
	}
	/*Sacar los valores de las medidas de un arma. 
	 * HACE FALTA SACAR LOS NOMBRES DE LAS VARIABLES*/
	@RequestMapping("/informacion-total")
	public ModelAndView getinformacion_total(@RequestParam("num")String num){
		
		System.out.println("NUM"+num+"\n");
		QueryEndpoint query=new QueryEndpoint();
		String queryStringIA= preffixes+ "SELECT ?weapon_identifier ?definition ?type_of_weapon ?calibre_A ?nationality ?origin ?date ?material ?observations ?type_piece"
				+ " WHERE {"
				+ " ?weapon_basic_information  rdf:type awv:weapon_basic_information;"
				+ "awv:weapon_identifier ?weapon_identifier;"
				+ "awv:calibre_of_A ?calibre_A;"
				+ "skos:definition ?definition;"
				+ "awv:type_of_weapon ?type_of_weapon;"
				+ " awv:type_of_piece ?type_piece."
				+ "OPTIONAL { ?weapon_basic_information awv:place_of_origin ?origin. }"
				+ "OPTIONAL { ?weapon_basic_information awv:material ?material. }"
				+ "OPTIONAL { ?weapon_basic_information dbpedia-owl:nationality ?nationality. }"
				+ "OPTIONAL {  ?weapon_basic_information  awv:date_of_collection ?date. }"
				+ "OPTIONAL { ?weapon_basic_information  awv:observations ?observations. }"
				+"FILTER(?weapon_identifier="+ num+ ")"
				+"}";
		List<Map<String, String>> ia=query.QueryEndpointSelect(queryStringIA);
		String queryStringAM=preffixes + "SELECT ?weapon_identifier ?number ?trunnion_form ?muzzle_form ?inscription_right ?inscription_left ?first_reinforce_moulding ?first_reinforce_ring  ?second_reinforce_moulding ?chase_moulding ?muzzle_astragal ?other_reinforcing_rings ?coat_of_arms ?observations"
				+" WHERE {"
				+" ?morphological_analysis rdf:type awv:morphological_analysis;"
				+" awv:weapon_identifier ?weapon_identifier;"
				+"OPTIONAL { ?morphological_analysis awv:number_of_members ?number. }"
				+"OPTIONAL { ?morphological_analysis  awv:trunnion_form ?trunnion_form. }"
				+"OPTIONAL { ?morphological_analysis  awv:muzzle_form ?muzzle_form. }"
				+"OPTIONAL { ?morphological_analysis  awv:cascable ?cascable. }"
				+"OPTIONAL { ?morphological_analysis  awv:inscription_right_trunnion ?inscription_right. }"
				+"OPTIONAL { ?morphological_analysis  awv:inscription_left_trunnion ?inscription_left. }"
				+"OPTIONAL { ?morphological_analysis  awv:beginning_first_reinforce_moulding ?first_reinforce_moulding. }"
				+"OPTIONAL { ?morphological_analysis  awv:first_reinforce_ring ?first_reinforce_ring. }"
				+"OPTIONAL { ?morphological_analysis  awv:beginning_second_reinforce_ring ?second_reinforce_moulding. }"
				+"OPTIONAL { ?morphological_analysis  awv:beginning_chase_moulding ?chase_moulding. }"
				+"OPTIONAL { ?morphological_analysis  awv:muzzle_astragal ?muzzle_astragal. }"
				+"OPTIONAL { ?morphological_analysis  awv:other_reinforcing_rings ?other_reinforcing_rings. }"
				+"OPTIONAL { ?morphological_analysis  awv:coat_of_arms ?coat_of_arms. }"
				+"OPTIONAL { ?morphological_analysis    awv:observations ?observations. }"
			//	+"FILTER(?identifier=1)"
				+"FILTER(?weapon_identifier="+ num+ ")"
				+"}";
		//System.out.println(queryStringAM);
		List<Map<String, String>> am=query.QueryEndpointSelect(queryStringAM);
		/*Medidas dimensionales*/
		String queryStringMD=preffixes + "SELECT DISTINCT ?description ?value WHERE {"
				+ " ?Measurement rdf:type msr:Measurement;"
				+ "awv:measure_identifier ?measure_id;" 
				+ "dc:description ?description." 
				+ " ?measurement_value rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier ?identifier;"
				+ "awv:measure_identifier ?measure_id2."
				+ "OPTIONAL { ?measurement_value qudt:value ?value. }"
				+ "FILTER(?measure_id=?measure_id2)"
				+ "FILTER(?identifier="+ num+ ")"
				//+"FILTER(?measure_id=="+ num+")"
				+ "}";
	
		List<Map<String, String>> md=query.QueryEndpointSelect(queryStringMD);
		ModelAndView model = new ModelAndView("informacion-total");
		model.addObject("informarma", ia);
		model.addObject("morfologico", am);
		model.addObject("dimensional", md);
		List<Map<String, String>> tp;
		String queryStringTP;
		if(ia.get(0).get("type_piece").equals("OBJETO EXCAVADO")){
			System.out.println(" OBJETO EXCAVADO\n");
			queryStringTP=preffixes +"SELECT DISTINCT ?weapon  ?date  ?latitude ?longitude ?archaeologist  ?location ?restored  ?observations  "
					+"WHERE {"
					+"?object_excavated rdf:type awv:object_excavated;"
					+"awv:weapon_identifier ?weapon;"
					+"awv:object_excavated_identifier ?identifier."
					+"OPTIONAL { ?object_excavated awv:excavation_date ?date. }"
					+"OPTIONAL { ?object_excavated geo:lat ?latitude. }"
					+"OPTIONAL { ?object_excavated geo:long ?longitude. }"
					+"OPTIONAL { ?object_excavated awv:archaeologist ?archaeologist. }"
					+"OPTIONAL { ?object_excavated dbpedia-owl:location ?location. }"
					+"OPTIONAL { ?object_excavated  awv:object_excavated_restored ?restored.}"
					+"OPTIONAL { ?object_excavated  awv:observations ?observations. }"
					+"FILTER(?weapon="+ num+")"
					+"}";
					tp=query.QueryEndpointSelect(queryStringTP);
					model.addObject("tipoarma", tp);
					model.addObject("tipo_var", "OBJEX");
		}
		if(ia.get(0).get("type_piece").equals("PECIO"))
		{
			
		}
		if(ia.get(0).get("type_piece").equals("OBJETO EXCAVADO"))
		{
			
		}
		if(ia.get(0).get("type_piece").equals("OBJETO EXCAVADO"))
		{
			
		}
		return model;		
	}
	
	/*@RequestMapping(value = "/usuario", method = RequestMethod.GET)
	public ModelAndView usuario() {
	return new ModelAndView("usuario", "command", new Usuario());
	}*/

	//@RequestMapping(value = "/insertaUsuario", method = RequestMethod.POST)
	/*public String insertaUsuario(@ModelAttribute("WebApp")Usuario usuario, ModelMap model) {
	model.addAttribute("id", usuario.getId());
	model.addAttribute("nombre", usuario.getNombre());
	model.addAttribute("email", usuario.getEmail());

	return "resultado";
	}*/
	
	@RequestMapping(value = "/form_informacion_arma", method = RequestMethod.GET)
	public String informacionArma(Model model) {
		//return null;
	//	int id=getLast()+1;
		
		//QueryEndpoint query=new QueryEndpoint();
		InformacionArma arm=new InformacionArma();
		model.addAttribute("informacionarma",arm);//new InformacionArma());
		
		//System.out.println("HOLLAAAAAAAAAAAA"+arm);
	 //  model.addAttribute("tipo",arm.getTipo_pieza());
		return "form_informacion_arma";
	}
	
	
	@RequestMapping(value = "/form_archivo", method = RequestMethod.POST)
	public String insertarArchivo(Model model, @ModelAttribute("informacionarma") InformacionArma infarma, BindingResult result) {
    	 //model.addAttribute("informacionarma", infarma);
		return "form_archivo";
		//return new ModelAndView("form_informacion_arma", "command", new InformacionArma());
	}
    
    
    
    @RequestMapping(value = "/form_biblioteca", method = RequestMethod.POST)
	public String insertarBiblioteca(Model model, @ModelAttribute("informacionarma") InformacionArma infarma, BindingResult result) {
    	 //model.addAttribute("informacionarma", infarma);
    	return "form_biblioteca";
		//return new ModelAndView("form_informacion_arma", "command", new InformacionArma());
	}
    
    @RequestMapping(value = "/form_objeto_excavado", method = RequestMethod.POST)
  	public String insertarObjetoExcavado(Model model,@ModelAttribute("informacionarma") InformacionArma infarma, BindingResult result) {
    	// model.addAttribute("informacionarma", infarma);
    	return "form_objeto_excavado";
  		//return new ModelAndView("form_informacion_arma", "command", new InformacionArma());
  	}
      
    @RequestMapping(value = "/form_pecio", method = RequestMethod.POST)
  	public String insertarPecio(Model model, @ModelAttribute("informacionarma") InformacionArma infarma, BindingResult result) {
    	//model.addAttribute("informacionarma", infarma);
    	return "form_pecio";
  		//return new ModelAndView("form_informacion_arma", "command", new InformacionArma());
  	}
      
	  
    @RequestMapping(value = "/form_analisis_morfologico",method = RequestMethod.POST)
    public String analisisMorfologico(Model model,@ModelAttribute("informacionarma") InformacionArma infarma, BindingResult result){
        
       // validator.validatePage1(customer, result);
       /* if(result.hasErrors()){
            return "wizard1";
        }*/
    	//QueryEndpoint query=new QueryEndpoint();
        model.addAttribute("informacionarma", infarma);
        
        return "form_analisis_morfologico";
    }
    
    @RequestMapping(value = "form_medidas_dimensionales",method = RequestMethod.POST)
    public String medidasDimensionales(Model model,@ModelAttribute("informacionarma") InformacionArma infarma, BindingResult result){
       /* validator.validatePage2(customer, result);
        if(result.hasErrors()){
            return "wizard2";
        }*/
    	int id=getLast()+1;
    	System.out.println("ID"+id);
    	QueryEndpoint queryIA=new QueryEndpoint();
    	QueryEndpoint queryAM=new QueryEndpoint();
    ///	Sytem
    	System.out.println(infarma);
    	String insertqueryIA=preffixes+"INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/informacion_arma/"+ id+"> rdf:type awv:weapon_basic_information;"
	        		+ "awv:weapon_identifier "+ id+";" 
	        		+ "skos:definition '"+infarma.getDefinicion()+"';"
	        		+ "awv:type_of_piece '"+ infarma.getTipo_pieza()+"';"
	        		+ "awv:calibre_of_A '"+ infarma.getCalibre()+"';"
	        		+ "awv:type_of_weapon '"+ infarma.getTipo_arma()+"';"
	        		+ "awv:place_of_origin '"+ infarma.getProcedencia()+"';"
	        		+ "awv:material '"+ infarma.getMaterial()+"';"
	        		+ "dbpedia-owl:nationality '"+ infarma.getNacionalidad()+"';"
	        		+ "awv:date_of_collection '"+ infarma.getFecha_toma_datos()+"';"
					+ "awv:observations  '"+ infarma.getObservaciones()+"'.}";
    	String insertqueryAM=preffixes+"INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/analisis_morfologico/"+ id +"> rdf:type awv:morphological_analysis;"
        		+ "awv:weapon_identifier "+ id+ ";" 
        		+ "awv:number_of_members '"+infarma.getNum_cuerpos()+"';"
        		+ "awv:trunnion_form '"+ infarma.getForma_munones()+"';"
        		+ "awv:muzzle_form '"+ infarma.getForm_brocal_tulipa()+"';"
        		+ "awv:cascable '"+ infarma.getCascabel()+"';"
        		+ "awv:inscription_right_trunnion '"+ infarma.getInscripcion_munon_der()+ "';"
        		+ "awv:inscription_left_trunnion '"+ infarma.getInscripcion_munon_izq()+"';"
        		+ "awv:beginning_first_reinforce_moulding '"+ infarma.getMolduras_comienzo_primer_cuerpo()+"';"
        		+ "awv:first_reinforce_ring '"+ infarma.getAnillo_refuerzo_primer_cuerpo()+"';"
        		+ "awv:beginning_second_reinforce_moulding '"+infarma.getMolduras_principio_segundo_cuerpo()+"';"
				+ "awv:beginning_chase_moulding '"+infarma.getMolduras_principio_tercer_cuerpo()+"';"
				+ "awv:muzzle_astragal '"+ infarma.getAnillo_union_brocal_astragalo()+"';"
				+ "awv:other_reinforcing_rings '"+ infarma.getOtros_anillos()+"';"
				+ "awv:coat_of_arms '"+ infarma.getEscudo_armas()+"';"
				+ "awv:observations  '"+infarma.getObservaciones_analisismorf()+"'.}";
    	System.out.println(insertqueryAM);
	    queryIA.QueryEndpointInsert(insertqueryIA);
	    queryAM.QueryEndpointInsert(insertqueryAM);
	    //String insertqueryMD;
	    //for(int i=0; i< 22;i++){
	   // String var=infarma.getLongitud()
	    /* MEDIDAS DIMENSIONALES*/
	    QueryEndpoint queryMD=new QueryEndpoint();
	    String	insertqueryLongitudMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/1> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud()+"';"
				+"awv:measure_identifier 1;"
				+"}";
	    
	    queryMD.QueryEndpointInsert(insertqueryLongitudMD);
	    String	insertqueryDiametroAnimaMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/2> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_anima()+"';"
				+"awv:measure_identifier 2;"
				+"}";
	    queryIA.QueryEndpointInsert(insertqueryDiametroAnimaMD);
	    String	insertqueryLongitudCuerpo1MD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/3> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud_primer_cuerpo()+"';"
				+"awv:measure_identifier 3;"
				+"}";
	    queryIA.QueryEndpointInsert(insertqueryLongitudCuerpo1MD);
	    String	insertqueryDimMayorCuerpo1MD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/4> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_mayor_primer_cuerpo()+"';"
				+"awv:measure_identifier 4;"
				+"}";
	    queryIA.QueryEndpointInsert(insertqueryDimMayorCuerpo1MD);
		String	insertqueryDimMenorCuerpo1MD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/5> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_menor_primer_cuerpo()+"';"
				+"awv:measure_identifier 5;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDimMenorCuerpo1MD);
		String	insertqueryLongitudCuerpo2MD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/6> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud_segundo_cuerpo()+"';"
				+"awv:measure_identifier 6;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryLongitudCuerpo2MD);
		String	insertqueryDimMayorCuerpo2MD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/7> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_mayor_segundo_cuerpo()+"';"
				+"awv:measure_identifier 7;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDimMayorCuerpo2MD);
		String	insertqueryDimMenorCuerpo2MD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/8> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_menor_segundo_cuerpo()+"';"
				+"awv:measure_identifier 8;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDimMenorCuerpo2MD);
		String	insertqueryLongitudCuerpo3MD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/9> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud_tercer_cuerpo()+"';"
				+"awv:measure_identifier 9;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryLongitudCuerpo3MD);
		String	insertqueryDimMayorCuerpo3MD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/10> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_mayor_tercer_cuerpo()+"';"
				+"awv:measure_identifier 10;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDimMayorCuerpo3MD);
		String	insertqueryDimMenorCuerpo3MD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/11> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_menor_tercer_cuerpo()+"';"
				+"awv:measure_identifier 11;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDimMenorCuerpo3MD);
		String	insertqueryLongitudBrocalMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/12> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud_brocal()+"';"
				+"awv:measure_identifier 12;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryLongitudBrocalMD);
		String	insertqueryDistanciaEjeMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/13> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDistancia_eje()+"';"
				+"awv:measure_identifier 13;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDistanciaEjeMD);
		String	insertqueryDistanciaTeoricaMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/14> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDistancia_teorica()+"';"
				+"awv:measure_identifier 14;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDistanciaTeoricaMD);
		String	insertqueryDistanciaPuntoMMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/15> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDistancia_punto_medio()+"';"
				+"awv:measure_identifier 15;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDistanciaPuntoMMD);
		String	insertqueryDimExtMMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/16> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_extremo_munones()+"';"
				+"awv:measure_identifier 16;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDimExtMMD);	
		String	insertqueryDimProMMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/17> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_proximal_munones()+"';"
				+"awv:measure_identifier 17;"
				+"}";
		queryIA.QueryEndpointInsert(insertqueryDimProMMD);	
		String	insertqueryLongitudToMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/18> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud_total()+"';"
				+"awv:measure_identifier 18;"
				+"}";	
		queryIA.QueryEndpointInsert(insertqueryLongitudToMD);
		String	insertqueryDimCulataMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/19> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getDiametro_culata()+"';"
				+"awv:measure_identifier 19;"
				+"}";	
		queryIA.QueryEndpointInsert(insertqueryDimCulataMD);
		String	insertqueryEspejoMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/20> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud_primer_cuerpo()+"';"
				+"awv:measure_identifier 20;"
				+"}";	
		queryIA.QueryEndpointInsert(insertqueryEspejoMD);
		String	insertqueryDimMaximoMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/21> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud_primer_cuerpo()+"';"
				+"awv:measure_identifier 21;"
				+"}";	
		queryIA.QueryEndpointInsert(insertqueryDimMaximoMD);
		String	insertqueryDimBrocalMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/22> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud_primer_cuerpo()+"';"
				+"awv:measure_identifier 22;"
				+"}";	
		queryIA.QueryEndpointInsert(insertqueryDimBrocalMD);
		String	insertqueryDistanciaMMD=preffixes+ "INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/medida_dimensional_has_informacion_arma/"+id +"/23> rdf:type awv:measurement_value;"
				+ "awv:weapon_identifier "+id+";"
				+ "qudt:value '"+infarma.getLongitud_primer_cuerpo()+"';"
				+"awv:measure_identifier 23;"
				+"}";	
		queryIA.QueryEndpointInsert(insertqueryDistanciaMMD);
	    System.out.println(insertqueryIA);	
        model.addAttribute("informacionarma", infarma);
        return "form_medidas_dimensionales";
    }
    
    @RequestMapping(value = "resultado",method = RequestMethod.POST)
    public String finish(Model model, @ModelAttribute("informacionarma") InformacionArma infarma, SessionStatus sessionStatus,BindingResult result){
    //    validator.validatePage3(customer, result);
      /*  if(result.hasErrors()){
            return "wizard3";
        }*/
    	model.addAttribute("informacionarma", infarma);
        sessionStatus.setComplete();
        return "resultado";
    }
    
    
    
	
	/* CREAR TRES FORMULARIOS SEGUIDOS*/
//	 @RequestMapping(value = "form-1", method = RequestMethod.GET)
	/*    public String index(Model model){
	        model.addAttribute("customer", new Customer());
	        return "wizard1";
	    }*/
	/*@RequestMapping(value = "/insertar_informacion_arma", method = RequestMethod.POST)
	public ModelAndView insertarArmaNueva() {
		//return new ModelAndView("form_informacion_arma", "command", new InformacionArma());
	}*/
	
	/*@RequestMapping(value = "/form_medidas_dimensionales", method = RequestMethod.GET)
	public ModelAndView medidasDimensionales() {
	return new ModelAndView("form_medidas_dimensionales", "command", new MedidasDimensionales());
	}*/
	
	/*@RequestMapping(value = "/insertar_medidas_dimensionale", method = RequestMethod.GET)
	public ModelAndView insertarMedidasDimensionales() {
	return new ModelAndView("form_informacion_arma", "command", new InformacionArma());
	}*/
	
	/*@RequestMapping(value = "/form_analisis_morfologico", method = RequestMethod.GET)
	public ModelAndView analisisMorfologico() {
	return new ModelAndView("form_analisis_morfologico", "command", new AnalisisMorfologico());
	}*/
	
	/*@RequestMapping(value = "/insertar_analisis_morfologico", method = RequestMethod.GET)
	public ModelAndView insertarAnalisisMorfologico() {
	return new ModelAndView("form_informacion_arma", "command", new InformacionArma());
	}*/


}

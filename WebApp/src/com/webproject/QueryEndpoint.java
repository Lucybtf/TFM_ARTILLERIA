package com.webproject;

import org.apache.jena.query.Query;
import org.apache.jena.query.QueryExecution;
import org.apache.jena.query.QueryExecutionFactory;
import org.apache.jena.query.QueryFactory;
import org.apache.jena.query.QuerySolution;
import org.apache.jena.query.ResultSet;
import org.apache.jena.rdf.model.RDFNode;
import org.apache.jena.sparql.core.Var;
import org.apache.jena.update.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class QueryEndpoint {

	String endpoint="http://lod.uca.es:8090/d2r-server/sparql";
	String endpointupdate="http://lod.uca.es:8090/d2r-server/sparqlupdate";
	
	/*Obtener Lista de Variables*/
	List <String> getListVars(Query q)
	{
		List<String> result= new ArrayList <String>();
		for(Var v: q.getProjectVars()){
			//List<String> list= new ArrayList <String>();
			result.add(v.getName());
		}
		return result;
		
	}
	
	
	public List<Map<String, String>> QueryEndpointSelect(String queryString){
		
		Query query=QueryFactory.create(queryString);
		QueryExecution queryex= QueryExecutionFactory.sparqlService(endpoint, query);
		ResultSet results=queryex.execSelect();
		//ResultSetFormatter.out(System.out, results, query);
		List<Map<String, String>> arrayList= new ArrayList< Map<String,String> >();
		
		int num=getListVars(query).size();
		//System.out.println(num);
		while(results.hasNext()){
			Map <String,String> row = new HashMap<String, String>();
			QuerySolution q=results.next();
			//System.out.println(q);
			for(int i=0;i< num;i++){
			//	QuerySolution q=results.next();
				RDFNode varNode = q.get(getListVars(query).get(i)); 
				String var=getListVars(query).get(i);
				//System.out.println(var+ ":"+varNode+"\n");
				//System.out.println("\n");
				if(varNode==null)
					row.put(getListVars(query).get(i), null);
				else
					row.put(getListVars(query).get(i), varNode.toString());
					
			}
			arrayList.add(row);
			//System.out.println("ROW"+row+"\n");
			
		}
		
		/*for(int i=0; i< arrayList.size();i++){
			//System.out.println(i);
			System.out.println(i+" "+arrayList.get(i)+ "\n");
		}*/
		//System.out.println(arrayList);
		return arrayList;

		
	}
	
	/*Insertar datos en la BD*/
	public void QueryEndpointInsert(String query){
		UpdateRequest request = UpdateFactory.create(query);
		UpdateProcessor qexec = UpdateExecutionFactory.createRemote(request, endpointupdate); 
		qexec.execute(); 
	}
	
	public static void main(String[] args){
		QueryEndpoint query=new QueryEndpoint();
		//List<Map<String, String>> p=query.QueryEndpointSelect();
		//for(int i=0; i< p.size();i++){
			//System.out.println(i);
			//System.out.println(i+" "+p.get(i)+ "\n");
		//}
		String preffixes="PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>"
				+ "PREFIX skos: <http://www.w3.org/2004/02/skos/core#>"
				+ "PREFIX awv: <http://lod.uca.es/neologism/awv#>"
				+ "PREFIX dbpedia-owl: <http://dbpedia.org/ontology/>"
				+ "PREFIX qudt: <http://qudt.org/schema/qudt#>"
				+ "PREFIX msr: <http://www.telegraphis.net/ontology/measurement/measurement#>"
				+ "PREFIX dc: <http://purl.org/dc/elements/1.1/>"
				+ "PREFIX geo: <http://www.w3.org/2003/01/geo/wgs84_pos#>";
		   String insertqueryIA=preffixes+"INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/analisis_morfologico/18> rdf:type awv:morphological_analysis;"
	        		+ "awv:weapon_identifier 18;" 
	        		+ "awv:number_of_members '3';"
	        		+ "awv:trunnion_form 'T';"
	        		+ "awv:muzzle_form 'c';"
	        		+ "awv:cascable 'A';"
	        		+ "awv:inscription_right_trunnion 'w';"
	        		+ "awv:inscription_left_trunnion 'aw';"
	        		+ "awv:beginning_first_reinforce_moulding 'C-X-C';"
	        		+ "awv:first_reinforce_ring 'F-C';"
	        		+ "awv:beginning_second_reinforce_moulding 'C-C-C-T-C-C-C';"
					+ "awv:beginning_chase_moulding 'C-T';"
					+ "awv:muzzle_astragal 'C-C-C-T-C-C-C';"
					+ "awv:other_reinforcing_rings '2º anillo';"
					+ "awv:coat_of_arms 'no';"
					+ "awv:observations  'esto es una prueba'.}";
	        query.QueryEndpointInsert(insertqueryIA);
		//query.QueryEndpointInsert("PREFIX skos:<http://www.w3.org/2004/02/skos/core#> PREFIX awv:<http://lod.uca.es/neologism/awv#> PREFIX rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#> INSERT DATA{<http://lod.uca.es:8090/d2r-server/resource/informacion_arma/19445> rdf:type awv:weapon_basic_information; awv:weapon_identifier 19445; skos:definition 'PRACTICO'; awv:type_of_piece 'pecio'.}");
	}
}

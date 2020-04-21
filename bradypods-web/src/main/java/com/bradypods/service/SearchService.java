package com.bradypods.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
import com.bradypods.pojo.Position;
import com.bradypods.util.MapperUtils;

@Service
public class SearchService {
	@Autowired
	private RestTemplate client;
	public List<Position> search(String q, Integer page) {
		try{            
			String url="http://176.198.102.10:8095/search?text={1}&page={2}&rows={3}";
			String pListJson=client.getForObject(url, String.class,q,page,5);
			System.out.println(pListJson);
			//ObjectMapper解析list结构的json
			JsonNode data = MapperUtils.MP.readTree(pListJson);
			List<Position> pList=
					MapperUtils.MP.readValue(
							data.traverse(), 
							MapperUtils.MP.getTypeFactory()
							.constructCollectionType(
									List.class, Position.class));	
			return pList;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}

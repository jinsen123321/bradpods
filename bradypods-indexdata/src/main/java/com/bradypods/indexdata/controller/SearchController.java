package com.bradypods.indexdata.controller;

import java.util.ArrayList;

import java.util.List;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.index.query.MatchQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bradypods.pojo.Position;
import com.bradypods.util.MapperUtils;


@RestController
public class SearchController {
	@Autowired
	private TransportClient client;
	
	@RequestMapping("search")
	public List<Position> searchByName(String text
			,Integer page,Integer rows) throws Exception{
		//索引和类型 easymall_index1,productr
		//构造一个MatchQuery
		MatchQueryBuilder query = QueryBuilders.matchQuery("positionName", text);
	
		//client调用搜索api获取分页查询结果
		int start=(page-1)*rows;
		SearchResponse response = client.prepareSearch("position_index02").setFrom(start).setSize(rows)
		.setQuery(query).get();
		//遍历循环数据封装的对象hits
		SearchHits hits = response.getHits();
		List<Position> pList=new ArrayList<Position>();
		//fore循环
		for (SearchHit hit : hits) {
			String  positionJson = hit.getSourceAsString();//{"productName":"","productPrice"}
			Position p=MapperUtils.MP.readValue(positionJson, Position.class);
			pList.add(p);
		}
		return pList;
	}
}

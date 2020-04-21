package com.bradypods.indexdata.controller;

import java.util.List;


import org.elasticsearch.client.IndicesAdminClient;
import org.elasticsearch.client.transport.TransportClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bradypods.indexdata.mapper.PositionMapper;
import com.bradypods.pojo.Position;
import com.bradypods.util.MapperUtils;
import com.fasterxml.jackson.core.JsonProcessingException;


@RestController
public class CreateController {
	@Autowired
	private TransportClient client;
	@Autowired
	private PositionMapper positionMapper;
	@RequestMapping("create")
	public Integer creataProductIndex() throws Exception{
		//准备好即将输出写入到索引中的所有商品数据
		List<Position> pList=positionMapper.queryTotal();
		//调用client的api创建索引(先判断存在,在创建)
		IndicesAdminClient admin = client.admin().indices();
		admin.prepareCreate("position_index02").get();
		//将pList封装document输出到索引中
		for (Position position : pList) {
			//准备document结构
			String positionjson=MapperUtils.MP.writeValueAsString(position);
			client.prepareIndex("position_index02", "position", position.getPositionId())
			.setSource(positionjson).get();
		}
		return 1;
	}
	@RequestMapping("createeee")
	public void screataProductIndex(){
		System.out.println("?");
	}
	}

















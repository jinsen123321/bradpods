package com.bradypods.position.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bradypods.pojo.Position;
import com.bradypods.position.mapper.PositionMapper;
import com.bradypods.util.MapperUtils;
import com.bradypods.util.RedisCumUtils;
import com.bradypods.vo.Page;


@Service
public class PositionService {
	@Autowired
	private PositionMapper positionMapper;

	public Page queryByPage(Integer currentPage, Integer rows) {
		Page page=new Page();
		page.setCurrentPage(currentPage);
		int total=100;
		int totalPage=(total%rows==0)?(total/rows):(total/rows+1);
		page.setTotalPage(totalPage);
		int start=(currentPage-1)*rows;
		System.out.println(start);
		List<Position> pList=positionMapper.queryByPage(start,rows);
		page.setPositions(pList);
		return page;
	}
	
	@Autowired
	private RedisCumUtils jedis;
	public Position queryById(String positiontId) {
		//定义更新锁的key值
		String positionLockKey="position_"+positiontId+".lock";
		//定义缓存的key
		String positionKey="position_"+positiontId;
		//先判断锁的存在
		try{
			if(jedis.isExist(positionLockKey)){
				//说明有人正在更新,不能操作缓存
				return positionMapper.queryById(positiontId);
			}else{//正常执行缓存逻辑
				if(jedis.isExist(positionKey)){//缓存有数据
					String positionJson=jedis.query(positionKey);
					return MapperUtils.MP.readValue(positionJson,
							Position.class);
				}else{
					//查询数据库,并且再缓存中添加数据
					Position product=positionMapper.queryById(positiontId);
					String json=MapperUtils.MP.writeValueAsString(product);
					jedis.addOrUpdate(positionKey, json);
					return product;
				}
			}	
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}	
	}
	

}







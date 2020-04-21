package com.bradypods.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.bradypods.util.MapperUtils;
import com.bradypods.vo.Page;
@Service
public class EmpService {
	@Autowired
	private RestTemplate client;

	public Page queryByPage(Integer currentPage, Integer rows) {
	
			//定义请求到后台的url地址,访问后台获取分页查询的各种数据返回
			String url="http://Employments.bradypods.com/position/queryByPage?page="
					+currentPage+"&rows="+rows;
			try{
				String jsonData = client.getForObject(url, String.class, currentPage,rows);
				Page page=MapperUtils.MP.readValue(jsonData, Page.class);
				return page;
				/*CloseableHttpResponse response = client.execute(request);
			//解析response,entity字符串
				String jsonData=EntityUtils.
						toString(response.getEntity());
			//jsonData={"total":56,"currentPage":2;"products":[{},{},{},{},{}]}
			//解析字符串
				Page page=MapperUtils.MP.readValue(jsonData, Page.class);
				
				return page;*/
			}catch(Exception e){
				e.printStackTrace();
				return null;
			}
		}
}
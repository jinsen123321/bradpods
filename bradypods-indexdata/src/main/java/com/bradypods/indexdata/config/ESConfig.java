package com.bradypods.indexdata.config;

import java.net.InetAddress;

import java.util.List;

import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix="elasticsearch")
public class ESConfig {
	private List<String> nodes;
	
	//初始化连接对象
	@Bean
	public TransportClient initEsClient() throws Exception{
		//新建一个client对象,setting对象(配置集群名称)
		TransportClient client=
				new PreBuiltTransportClient(Settings.EMPTY);
		//添加负载均衡器的结点信息,如果是集群,可以多次添加多个节点信息
		
		for (String node : nodes) {//10.9.9.9:9300
			String host=node.split(":")[0];
			int port=Integer.parseInt(node.split(":")[1]);
			client.addTransportAddress(new InetSocketTransportAddress(
					InetAddress.getByName(host), port));
		}
		return client;
	}
	public List<String> getNodes() {
		return nodes;
	}

	public void setNodes(List<String> nodes) {
		this.nodes = nodes;
	}
	
}

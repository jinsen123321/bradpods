package com.pradypods.controller;

import com.pradypods.pojo.Answer;
import com.pradypods.pojo.ResultCount;
import com.pradypods.pojo.Standard;
import com.pradypods.pojo.Suggestion;

import com.pradypods.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.HashMap;

@Controller
public class MbtiController {
	@Autowired
	private TestService testservice;
    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
        return "HelloWorld";
    }

    @RequestMapping("/mbti")
    public String mbti(Model model){
        return "/mbti";
    }

    @Resource
    private Answer answer;
    @Resource
    private Standard standard;
    @Resource
    private ResultCount resultCount;

    @RequestMapping("/testAnswer")
    public String result(HttpServletRequest request,Model model){
        //创造一个hashmap
        HashMap map = new HashMap();
        //获取request所有的参数
        Enumeration parameterNames = request.getParameterNames();
        while(parameterNames.hasMoreElements()) {
            //获取key
            String paraName = (String) parameterNames.nextElement();
            //获取value
            String value = request.getParameter(paraName);
            //存入map
            map.put(paraName,value);
            System.out.println(request.getParameter(paraName));
        }
        //存入answer
        answer.setAnswer(map);

        //取出map
        HashMap kav = answer.getAnswer();
        //将map结果转换为字符串,并去除第一个和最后一个字符
        String ans = kav.toString().substring(1,kav.toString().length()-1);
        //打印输出
        System.out.println(ans);
        //将结果转化为评价结果
        String[] result = ans.split(", ");
        for (int i = 0; i < result.length; i++) {
            //评价的结果属性值
            String s = standard.getStandard(result[i]);
            System.out.println(s);
            //统计各选项的个数
            if(s.equals("J")){resultCount.setJ(resultCount.getJ()+1);}
            else if(s.equals("P")){resultCount.setP(resultCount.getP()+1);}
            else if(s.equals("E")){resultCount.setE(resultCount.getE()+1);}
            else if(s.equals("I")){resultCount.setI(resultCount.getI()+1);}
            else if(s.equals("S")){resultCount.setS(resultCount.getS()+1);}
            else if(s.equals("N")){resultCount.setN(resultCount.getN()+1);}
            else if(s.equals("T")){resultCount.setT(resultCount.getT()+1);}
            else if(s.equals("F")){resultCount.setF(resultCount.getF()+1);}
        }
        //判断输出评估的结果类型
        String str = "";
        if(resultCount.getE()<=resultCount.getI()){str = str.concat("I");}
        if(resultCount.getE()>resultCount.getI()){str = str.concat("E");}
        if(resultCount.getS()<=resultCount.getN()){str = str.concat("N");}
        if(resultCount.getS()>resultCount.getN()){str = str.concat("S");}
        if(resultCount.getT()<=resultCount.getF()){str = str.concat("F");}
        if(resultCount.getT()>resultCount.getF()){str = str.concat("T");}
        if(resultCount.getJ()<=resultCount.getP()){str = str.concat("P");}
        if(resultCount.getJ()>resultCount.getP()){str = str.concat("J");}
        System.out.println("--------------");
        resultCount.setStri(str);
        System.out.println(resultCount.getStri());

        //将评判类型返回到前端
        Suggestion suggestion = testservice.query(str);
        model.addAttribute("type",str);
        model.addAttribute("suggest",suggestion);
        System.out.println("--------------------------");
        return "/testAnswer";
    }


}

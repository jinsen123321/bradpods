package com.pradypods.pojo;

import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class Standard {

   public String getStandard(String key){
       if(key.equals("q1=A")){ return "J";}
       else if(key.equals("q1=B")){return "P";}
       else if(key.equals("q2=A")){return "P";}
       else if(key.equals("q2=B")){return "J";}
       else if(key.equals("q3=A")){return "S";}
       else if(key.equals("q3=B")){return "N";}
       else if(key.equals("q4=A")){return "E";}
       else if(key.equals("q4=B")){return "I";}
       else if(key.equals("q5=A")){return "N";}
       else if(key.equals("q5=B")){return "S";}
       else if(key.equals("q6=A")){return "F";}
       else if(key.equals("q6=B")){return "T";}
       else if(key.equals("q7=A")){return "P";}
       else if(key.equals("q7=B")){return "J";}
       else if(key.equals("q8=A")){return "E";}
       else if(key.equals("q8=B")){return "I";}
       else if(key.equals("q9=A")){return "J";}
       else if(key.equals("q9=B")){return "P";}
       else if(key.equals("q10=A")){return "J";}
       else if(key.equals("q10=B")){return "P";}
       else if(key.equals("q11=A")){return "P";}
       else if(key.equals("q11=B")){return "J";}
       else if(key.equals("q12=A")){return "I";}
       else if(key.equals("q12=B")){return "E";}
       else if(key.equals("q13=A")){return "S";}
       else if(key.equals("q13=B")){return "N";}
       else if(key.equals("q14=A")){return "E";}
       else if(key.equals("q14=B")){return "I";}
       else if(key.equals("q15=A")){return "N";}
       else if(key.equals("q15=B")){return "S";}
       else if(key.equals("q16=A")){return "F";}
       else if(key.equals("q16=B")){return "T";}
       else if(key.equals("q17=A")){return "P";}
       else if(key.equals("q17=B")){return "J";}
       else if(key.equals("q18=A")){return "I";}
       else if(key.equals("q18=B")){return "E";}
       else if(key.equals("q19=A")){return "E";}
       else if(key.equals("q19=B")){return "I";}
       else if(key.equals("q20=A")){return "J";}
       return "P";
   }


}

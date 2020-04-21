package com.pradypods.pojo;

import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class Answer{
    private HashMap<String,String> answer;

    public HashMap getAnswer() {
        return answer;
    }

    public void setAnswer(HashMap answer) {
        this.answer = answer;
    }




}

package com.matron.rest.controller;


import com.matron.pojo.QuestionAsk;
import com.matron.pojo.util.JsonUtils;
import com.matron.rest.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class QuestionAll {
    @Autowired
    private QuestionService QuestionService;
    @ResponseBody
    @RequestMapping(value = "/question/all",
            produces= MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    public String questionall(String callback) {
        List<QuestionAsk> list = QuestionService.getAll();
        String json = JsonUtils.objectToJson(list);
        String result = callback + "(" + json + ");";
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "/question/{id}",
            produces= MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    public String questionlist(@PathVariable int id,String callback) {
        List<QuestionAsk> list = QuestionService.getAllOther(id);
        String json = JsonUtils.objectToJson(list);
        String result = callback + "(" + json + ");";
        return result;
    }
}

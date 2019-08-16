package com.matron.rest.controller;


import com.matron.pojo.MatronItem;
import com.matron.pojo.page;
import com.matron.pojo.util.JsonUtils;
import com.matron.rest.service.MatronListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class MatronItemList {
    @Autowired
    private MatronListService matronListService;
    @ResponseBody
    @RequestMapping(value = "/matronlist/all",
            produces= MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    public String matronalllist(String callback) {
        List<MatronItem> list = matronListService.getAll();
        String json = JsonUtils.objectToJson(list);
        String result = callback + "(" + json + ");";
        return result;
    }
    @ResponseBody
    @RequestMapping(value = "/matronlist/allstar",
            produces= MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    public String matronalllistStar(String callback) {
        List<MatronItem> list = matronListService.getAllOther("star");
        String json = JsonUtils.objectToJson(list);
        String result = callback + "(" + json + ");";
        return result;
    }
    @ResponseBody
    @RequestMapping(value = "/matronlist/allyear",
            produces= MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    public String matronalllistYear(String callback) {
        List<MatronItem> list = matronListService.getAllOther("year");
        String json = JsonUtils.objectToJson(list);
        String result = callback + "(" + json + ");";
        return result;
    }
    @ResponseBody
    @RequestMapping(value = "/matronlist/allprice",
            produces= MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    public String matronalllistPrice(String callback) {
        List<MatronItem> list = matronListService.getAllOther("price");
        String json = JsonUtils.objectToJson(list);
        String result = callback + "(" + json + ");";
        return result;
    }
}

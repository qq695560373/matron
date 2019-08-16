package com.matron.controller;

import com.matron.pojo.*;
import com.matron.pojo.util.Json;
import com.matron.pojo.util.JsonUtils;
import com.matron.service.QuestionService;
import com.matron.service.TopicService;
import com.matron.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/question")
public class QuestionController extends BaseController{

	@Autowired
	private QuestionService questionService;
	@Autowired
	private TopicService topicService;
	@Autowired
	private UserService userService;
	//更新
	@RequestMapping("/update")
	@ResponseBody
	public Json updateItem(@RequestBody QuestionAsk questionAsk){
		Json json = new Json();
        if(questionService.updateItem(questionAsk)){
        	json.setSuccess(true);
        	json.setMsg("修改成功");
		}
		return json;
	}
	//查询所有
	@ResponseBody
	@RequestMapping(value = "/all",method = {RequestMethod.GET,RequestMethod.POST})
	public List<Question> matronlist(page page) {
		List<QuestionAsk> list = questionService.getAll();
		List<Question> li = new ArrayList<Question>();
		for( int i = 0 ; i < list.size() ; i++) {
			Question question = new Question();
			question.setId(list.get(i).getId());
			question.setTime(list.get(i).getTime());
			question.setTitle(list.get(i).getTitle());
			question.setTopic(topicService.findById(list.get(i).getTopicid()).getTopic());
			question.setUser(userService.findById(list.get(i).getUserid()).getName());
			System.out.println(list.get(i).getTitle());
			li.add(question);
		}
		System.out.println(li);
		return li;
	}
	//添加
	@ResponseBody
	@RequestMapping(value = "/add",method = {RequestMethod.GET,RequestMethod.POST})
	public String addItem(String question,String callback){
		Json json = new Json();
		QuestionAsk questionAsk = new QuestionAsk();
		long i = 1;
		String titlenew= null;
		try {
			titlenew = new String(question.trim().getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		System.out.println(titlenew);
		questionAsk.setUserid(i);
		questionAsk.setTopicid(1);
		questionAsk.setTitle(titlenew);
		Date date = new Date(System.currentTimeMillis());

		questionAsk.setTime(date);
		questionAsk.setNum(0);
		if(questionService.addItem(questionAsk)){
			json.setSuccess(true);
			json.setMsg("发表成功");
		}else{
			json.setSuccess(false);
			json.setMsg("发表失败");
		}
		String json1 = JsonUtils.objectToJson(json);
		String result = callback + "(" + json1 + ");";
		return result;
	}
	//根据id查询
	@ResponseBody
	@RequestMapping(value = "/findById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json findById(Long id) {

		System.out.println(id);
		Json json = new Json();
		QuestionAsk questionAsk = questionService.findById(id);
		json.setObj(questionAsk);
		return json;
	}
	//删除
	@ResponseBody
	@RequestMapping(value = "/delectById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json delectById(Long id) {
		Json json = new Json();
		questionService.delectById(id);
		json.setObj("删除成功");
		return json;
	}

}

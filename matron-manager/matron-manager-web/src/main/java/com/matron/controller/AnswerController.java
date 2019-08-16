package com.matron.controller;

import com.matron.pojo.Question;
import com.matron.pojo.QuestionAnswer;
import com.matron.pojo.QuestionAsk;
import com.matron.pojo.page;
import com.matron.pojo.util.Json;
import com.matron.service.AnswerService;
import com.matron.service.TopicService;
import com.matron.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/answer")
public class AnswerController extends BaseController{

	@Autowired
	private AnswerService AnswerService;

	//查询所有
	@ResponseBody
	@RequestMapping(value = "/all",method = {RequestMethod.GET,RequestMethod.POST})
	public List<QuestionAnswer> matronlist(page page) {
		List<QuestionAnswer> list = AnswerService.getAll();
		System.out.println(page.getCurrentPage());
		return list;
	}

	//根据id查询
	@ResponseBody
	@RequestMapping(value = "/findById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json findById(Integer id) {

		System.out.println(id);
		Json json = new Json();
		QuestionAnswer questionAsk = AnswerService.findById(id);
		json.setObj(questionAsk);
		return json;
	}
	//删除
	@ResponseBody
	@RequestMapping(value = "/delectById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json delectById(Integer id) {
		Json json = new Json();
		AnswerService.delectById(id);
		json.setObj("删除成功");
		return json;
	}

}

package com.matron.portal.controller;

import com.matron.pojo.*;
import com.matron.pojo.util.Json;
import com.matron.pojo.util.MD5;
import com.matron.service.AnswerService;
import com.matron.service.MatronDetailService;
import com.matron.service.MatronItemService;
import com.matron.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;


@Controller
public class IndexController {
	@Autowired
	private MatronItemService matronItemService;
	@Autowired
	private MatronDetailService matronDetailService;
	@Autowired
	private UserService userService;
	@Autowired
	private AnswerService answerService;
	@RequestMapping("/matrondetail/{itemId}")
	public String matrondetail(@PathVariable Long itemId, Model model) {
		MatronAll matronAll = new MatronAll();
		//ItemInfo item = matronDetailService.getItemById(itemId);
		//model.addAttribute("item", item);
		MatronItem matronItem = matronItemService.findById(itemId);
		MatronDetail matronDetail = matronDetailService.findById(itemId);
		matronAll.setId(matronItem.getId());
		matronAll.setPhoto(matronItem.getPhoto());
		matronAll.setAddress(matronItem.getAddress());
		matronAll.setName(matronItem.getName());
		matronAll.setPrice(matronItem.getPrice());
		matronAll.setYear(matronItem.getYear());
		matronAll.setStar(matronItem.getStar());
		matronAll.setSign(matronItem.getSign());
		matronAll.setAbility(matronDetail.getAbility());
		matronAll.setCulture(matronDetail.getCulture());
		matronAll.setIdcard(matronDetail.getIdcard());
		matronAll.setEvaluation(matronDetail.getEvaluation());
		matronAll.setExp(matronDetail.getExp());
		matronAll.setMarriage(matronDetail.getMarriage());
		matronAll.setNation(matronDetail.getNation());
		matronAll.setPapers(matronDetail.getPapers());

		model.addAttribute("item", matronAll);
		System.out.println(matronItem.getName());
		return "matrondetail";
	}


	@RequestMapping("/answer/{itemId}")
	public String answer(@PathVariable Integer itemId, Model model) {
		List<QuestionAnswer> questionAnswer = new ArrayList<QuestionAnswer>();
		questionAnswer = answerService.findByQid(itemId);
		model.addAttribute("answer", questionAnswer);
		return "answer";
	}

	@RequestMapping("/ability")
	public String ability() {
		return "ability";
	}

	@RequestMapping("/matronlist")
	public String matronlist() {
		return "matronlist";
	}

	@RequestMapping("/euser")
	public String euser() {
		return "euser";
	}

	@RequestMapping("/price")
	public String price() {
		return "price";
	}

	@RequestMapping("/ysservice")
	public String ysservice() {
		return "ysservice";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/regist")
	public String regist() {
		return "regist";
	}

	@RequestMapping("/servicegc")
	public String servicegc() {
		return "servicegc";
	}

	@RequestMapping("/question")
	public String question() {
		return "question";
	}

	@RequestMapping("/index")
	public String showIndex() {
		//String adJson = contentService.getContentList();
		//model.addAttribute("ad1", adJson);
		return "index";
	}

	@RequestMapping("/matroncheck")
	public String matroncheck() {
		return "matroncheck";
	}
	
	@RequestMapping(value="/httpclient/post", method=RequestMethod.POST, 
			produces=MediaType.TEXT_PLAIN_VALUE+";charset=utf-8")
	@ResponseBody
	public String testPost(String username, String password) {
		String result = "username:" + username + "\tpassword:" + password;
		System.out.println(result);
		return "username:" + username + ",password:" + password;
	}

	@RequestMapping("/updateuser")
	@ResponseBody
	public Object updateuser(@RequestBody User user,String callback) {
		Json json = new Json();
		String password = MD5.EncoderByMd5(user.getPass());
		user.setPassword(password);
		System.out.println("id:"+user.getId()+"pass"+user.getPass());
		if(userService.updateItem(user)){
			json.setSuccess(true);
			json.setMsg("修改成功");
		}
		//判断是否为jsonp调用
		if (StringUtils.isBlank(callback)) {
			json.setMsg("修改成功");
			return json;
		} else {
			MappingJacksonValue mappingJacksonValue = new MappingJacksonValue("修改成功");
			mappingJacksonValue.setJsonpFunction(callback);
			return mappingJacksonValue;
		}
	}
}

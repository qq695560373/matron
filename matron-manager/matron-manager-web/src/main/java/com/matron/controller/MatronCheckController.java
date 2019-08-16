package com.matron.controller;

import com.matron.pojo.MatronCheck;
import com.matron.pojo.page;
import com.matron.pojo.util.Json;
import com.matron.pojo.util.JsonUtils;
import com.matron.service.MatronCheckService;
import com.matron.service.TopicService;
import com.matron.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.util.List;


@Controller
@RequestMapping("/matroncheck")
public class MatronCheckController extends BaseController{

	@Autowired
	private MatronCheckService MatronCheckService;
	//更新
	@RequestMapping("/update")
	@ResponseBody
	public Json updateItem(@RequestBody MatronCheck MatronCheck){
		Json json = new Json();
        if(MatronCheckService.updateItem(MatronCheck)){
        	json.setSuccess(true);
        	json.setMsg("修改成功");
		}
		return json;
	}
	//查询所有
	@ResponseBody
	@RequestMapping(value = "/all",method = {RequestMethod.GET,RequestMethod.POST})
	public List<MatronCheck> matronlist(page page) {
		List<MatronCheck> list = MatronCheckService.getAll();
		return list;
	}
	//添加
	@ResponseBody
	@RequestMapping(value = "/add",method = {RequestMethod.GET,RequestMethod.POST})
	public String addDetail(String userid ,String paper,String callback) {
		Json json = new Json();
		MatronCheck matronCheck = new MatronCheck();
		try {
			matronCheck.setPapers(new String(paper.trim().getBytes("ISO-8859-1"), "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		matronCheck.setId(System.currentTimeMillis());
		matronCheck.setUserid(Long.parseLong(userid));
		if(MatronCheckService.addItem(matronCheck)){
			json.setSuccess(true);
			json.setMsg("发送成功");
		}else{
			json.setSuccess(false);
			json.setMsg("发送失败");
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
		MatronCheck MatronCheck = MatronCheckService.findById(id);
		json.setObj(MatronCheck);
		return json;
	}
	//删除
	@ResponseBody
	@RequestMapping(value = "/delectById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json delectById(Long id) {
		Json json = new Json();
		MatronCheckService.delectById(id);
		json.setObj("删除成功");
		return json;
	}

}

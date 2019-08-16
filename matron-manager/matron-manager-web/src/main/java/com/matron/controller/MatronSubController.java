package com.matron.controller;

import com.matron.pojo.Subscribe;
import com.matron.pojo.page;
import com.matron.pojo.util.Json;
import com.matron.pojo.util.JsonUtils;
import com.matron.service.MatronSubService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/ ")
public class MatronSubController extends BaseController{

	@Autowired
	private MatronSubService SubscribeService;
	//更新
	@RequestMapping("/update")
	@ResponseBody
	public Json updateItem(@RequestBody Subscribe Subscribe){
		Json json = new Json();
        if(SubscribeService.updateItem(Subscribe)){
        	json.setSuccess(true);
        	json.setMsg("修改成功");
		}
		return json;
	}
	//查询所有
	@ResponseBody
	@RequestMapping(value = "/all",method = {RequestMethod.GET,RequestMethod.POST})
	public List<Subscribe> matronlist(page page) {
		List<Subscribe> list = SubscribeService.getAll();
		return list;
	}
	//添加
	@ResponseBody
	@RequestMapping(value = "/add",method = {RequestMethod.GET,RequestMethod.POST})
	public String addDetail(String phone ,String address,String userid,String matronid,String callback) {
		Json json = new Json();
		Subscribe Subscribe = new Subscribe();
		Subscribe.setPhone(Long.parseLong(phone));
		try {
			Subscribe.setAddress(new String(address.trim().getBytes("ISO-8859-1"), "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Subscribe.setUserid(userid);
		Subscribe.setMatronid(Long.parseLong(matronid));
		Subscribe.setTime(new Date(System.currentTimeMillis()));
		Subscribe.setId((int)System.currentTimeMillis()*3/10000+520+1314-1234+15);
		if(SubscribeService.addItem(Subscribe)){
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
	public Json findById(int id) {

		System.out.println(id);
		Json json = new Json();
		Subscribe Subscribe = SubscribeService.findById(id);
		json.setObj(Subscribe);
		return json;
	}
	//删除
	@ResponseBody
	@RequestMapping(value = "/delectById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json delectById(int id) {
		Json json = new Json();
		SubscribeService.delectById(id);
		json.setObj("删除成功");
		return json;
	}

}

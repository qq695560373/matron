package com.matron.controller;

import com.matron.pojo.Advertising;
import com.matron.pojo.page;
import com.matron.pojo.util.Json;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/Advertising")
public class AdvertisingController extends BaseController{

	@Autowired
	private com.matron.service.AdvertisingService AdvertisingService;
	//更新
	@RequestMapping("/update")
	@ResponseBody
	public Json updateItem(@RequestBody Advertising Advertising) {
		Json json = new Json();
		if(AdvertisingService.updateItem(Advertising)){
			json.setSuccess(true);
			json.setMsg("修改成功");
		}
		return json;
	}
	//查询所有
	@ResponseBody
	@RequestMapping(value = "/all",method = {RequestMethod.GET,RequestMethod.POST})
	public List<Advertising> matronlist(page page) {
		List<Advertising> list = AdvertisingService.getAll();
		System.out.println(page.getCurrentPage());
		return list;
	}

	//根据id查询
	@ResponseBody
	@RequestMapping(value = "/findById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json findById(int id) {

		System.out.println(id);
		Json json = new Json();
		Advertising Advertising = AdvertisingService.findById(id);
		json.setObj(Advertising);
		return json;
	}

}

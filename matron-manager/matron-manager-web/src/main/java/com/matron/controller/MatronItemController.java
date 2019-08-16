package com.matron.controller;

import com.matron.pojo.util.Json;
import com.matron.pojo.MatronItem;
import com.matron.pojo.page;
import com.matron.service.MatronItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/item")
public class MatronItemController extends BaseController{

	@Autowired
	private MatronItemService matronItemService;
	//更新
	@RequestMapping("/update")
	@ResponseBody
	public Json updateItem(@RequestBody MatronItem matronItem) {
		Json json = new Json();
        if(matronItemService.updateItem(matronItem)){
        	json.setSuccess(true);
        	json.setMsg("修改成功");
		}
		return json;
	}
	//查询所有
	@ResponseBody
	@RequestMapping(value = "/all",method = {RequestMethod.GET,RequestMethod.POST})
	public List<MatronItem> matronlist(page page) {
		List<MatronItem> list = matronItemService.getAll();
		System.out.println(page.getCurrentPage());
		return list;
	}
	//添加
	@ResponseBody
	@RequestMapping(value = "/add",method = {RequestMethod.GET,RequestMethod.POST})
	public Json addItem(@RequestBody MatronItem matronItem) {
		Json json = new Json();
		matronItem.setId(System.currentTimeMillis());
		if(matronItemService.addItem(matronItem)){
			json.setSuccess(true);
			json.setMsg("添加成功");
			return json;
		}
		json.setSuccess(false);
		json.setMsg("添加失败");
		return json;
	}
	//根据id查询
	@ResponseBody
	@RequestMapping(value = "/findById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json findById(Long id) {

		System.out.println(id);
		Json json = new Json();
		MatronItem matronItem = matronItemService.findById(id);
		json.setObj(matronItem);
		return json;
	}
	//删除
	@ResponseBody
	@RequestMapping(value = "/delectById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json delectById(Long id) {
		Json json = new Json();
		matronItemService.delectById(id);
		json.setObj("删除成功");
		return json;
	}

}

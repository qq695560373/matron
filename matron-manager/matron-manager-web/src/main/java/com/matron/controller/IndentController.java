package com.matron.controller;

import com.matron.pojo.Indent;
import com.matron.pojo.page;
import com.matron.pojo.util.Json;
import com.matron.pojo.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;


@Controller
@RequestMapping("/indent")
public class IndentController extends BaseController{

	@Autowired
	private com.matron.service.IndentService IndentService;
	//更新
	@RequestMapping("/update")
	@ResponseBody
	public Json updateItem(@RequestBody Indent Indent) {
		Json json = new Json();
		if(IndentService.updateItem(Indent)){
			json.setSuccess(true);
			json.setMsg("修改成功");
		}
		return json;
	}
	//查询所有
	@ResponseBody
	@RequestMapping(value = "/all",method = {RequestMethod.GET,RequestMethod.POST})
	public List<Indent> matronlist(page page) {
		List<Indent> list = IndentService.getAll();
		System.out.println(page.getCurrentPage());
		return list;
	}
	//添加
	@ResponseBody
	@RequestMapping(value = "/add",method = {RequestMethod.GET,RequestMethod.POST})
	public Json addItem(@RequestBody Indent Indent) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		Json json = new Json();
		Indent.setId(System.currentTimeMillis());
		if(IndentService.addItem(Indent)){
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
		Indent Indent = IndentService.findById(id);
		json.setObj(Indent);
		return json;
	}
	//删除
	@ResponseBody
	@RequestMapping(value = "/delectById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json delectById(Long id) {
		Json json = new Json();
		IndentService.delectById(id);
		json.setObj("删除成功");
		return json;
	}

}

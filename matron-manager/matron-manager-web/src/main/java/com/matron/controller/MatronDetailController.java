package com.matron.controller;

import com.matron.pojo.util.Json;
import com.matron.pojo.MatronDetail;
import com.matron.pojo.page;
import com.matron.service.MatronDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/detail")
public class MatronDetailController extends BaseController{

	@Autowired
	private com.matron.service.MatronDetailService MatronDetailService;
	//更新
	@RequestMapping("/update")
	@ResponseBody
	public Json updateDetail(@RequestBody MatronDetail matronDetail) {
		Json json = new Json();
        if(MatronDetailService.updateDetail(matronDetail)){
        	json.setSuccess(true);
        	json.setMsg("修改成功");
		}
		return json;
	}
	//查询所有
	@ResponseBody
	@RequestMapping(value = "/all",method = {RequestMethod.GET,RequestMethod.POST})
	public List<MatronDetail> matronlist(page page) {
		List<MatronDetail> list = MatronDetailService.getAll();
		return list;
	}
	//添加
	@ResponseBody
	@RequestMapping(value = "/add",method = {RequestMethod.GET,RequestMethod.POST})
	public Json addDetail(@RequestBody MatronDetail matronDetail) {
		Json json = new Json();
		matronDetail.setId(System.currentTimeMillis());
		if(MatronDetailService.addDetail(matronDetail)){
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
		Json json = new Json();
		MatronDetail matronDetail = MatronDetailService.findById(id);
		json.setObj(matronDetail);
		return json;
	}
	//删除
	@ResponseBody
	@RequestMapping(value = "/delectById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json delectById(Long id) {
		Json json = new Json();
		MatronDetailService.delectById(id);
		json.setObj("删除成功");
		return json;
	}
}

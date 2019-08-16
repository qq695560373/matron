package com.matron.controller;

import com.matron.pojo.MatronItem;
import com.matron.service.MatronDetailService;
import com.matron.service.MatronItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class SystemController extends BaseController{

	@Autowired
	private MatronItemService matronItemService;
	private MatronDetailService matronDetailService;
	//月嫂展示界面
	@RequestMapping(value = "/matronlist",method = {RequestMethod.GET,RequestMethod.POST})
	public String matronlist(Model model) {
		List<MatronItem> list = matronItemService.getAll();

		model.addAttribute("itemList", list);
		return "matronlist";
	}
	//月嫂详情界面
	@RequestMapping(value = "/matrondetail",method = {RequestMethod.GET,RequestMethod.POST})
	public String matrondetail() {
		return "matrondetail";
	}
	//用户界面
	@RequestMapping(value = "/userlist",method = {RequestMethod.GET,RequestMethod.POST})
	public String userlist() {
		return "userlist";
	}
	//问题界面
	@RequestMapping(value = "/questionlist",method = {RequestMethod.GET,RequestMethod.POST})
	public String questionlist() {
		return "questionlist";
	}
	//答案界面
	@RequestMapping(value = "/answerlist",method = {RequestMethod.GET,RequestMethod.POST})
	public String answerlist() {
		return "answerlist";
	}
	@RequestMapping(value = "/matronfw",method = {RequestMethod.GET,RequestMethod.POST})
	public String matronfw() {
		return "matronfw";
	}
	@RequestMapping(value = "/fwflow",method = {RequestMethod.GET,RequestMethod.POST})
	public String fwflow() {
		return "fwflow";
	}
	@RequestMapping(value = "/charges",method = {RequestMethod.GET,RequestMethod.POST})
	public String charges() {
		return "charges";
	}

	@RequestMapping(value = "/indent",method = {RequestMethod.GET,RequestMethod.POST})
	public String indent() {
		return "indent";
	}

	@RequestMapping(value = "/matronchecklist",method = {RequestMethod.GET,RequestMethod.POST})
	public String matronchecklist() {
		return "matronchecklist";
	}
}

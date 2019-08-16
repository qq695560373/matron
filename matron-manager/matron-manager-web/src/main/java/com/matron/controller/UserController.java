package com.matron.controller;

import com.matron.pojo.User;
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
@RequestMapping("/user")
public class UserController extends BaseController{

	@Autowired
	private com.matron.service.UserService UserService;
	//更新
	@RequestMapping("/update")
	@ResponseBody
	public Json updateItem(@RequestBody User User){
		Json json = new Json();
		String password = MD5.EncoderByMd5(User.getPass());
		User.setPassword(password);
		System.out.println(User.getId()+" "+User.getPass()+" "+User.getPhone()+" "+User.getIsmatron()+" "+User.getPermissionid()+" "+User.getNickname()+" "+User.getPassword());
        if(UserService.updateItem(User)){
        	json.setSuccess(true);
        	json.setMsg("修改成功");
		}
		return json;
	}
	//查询所有
	@ResponseBody
	@RequestMapping(value = "/all",method = {RequestMethod.GET,RequestMethod.POST})
	public List<User> matronlist(page page) {
		List<User> list = UserService.getAll();
		System.out.println(page.getCurrentPage());
		return list;
	}
	//添加
	@ResponseBody
	@RequestMapping(value = "/add",method = {RequestMethod.GET,RequestMethod.POST})
	public Json addItem(@RequestBody User User) throws UnsupportedEncodingException, NoSuchAlgorithmException {
		Json json = new Json();
		User.setId(System.currentTimeMillis());
		String password = MD5.EncoderByMd5(User.getPass());
		User.setPassword(password);
		if(UserService.addItem(User)){
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
		User User = UserService.findById(id);
		json.setObj(User);
		return json;
	}
	//删除
	@ResponseBody
	@RequestMapping(value = "/delectById",method = {RequestMethod.GET,RequestMethod.POST})
	public Json delectById(Long id) {
		Json json = new Json();
		UserService.delectById(id);
		json.setObj("删除成功");
		return json;
	}

}

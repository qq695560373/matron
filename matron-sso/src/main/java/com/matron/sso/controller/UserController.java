package com.matron.sso.controller;

import com.matron.pojo.User;
import com.matron.pojo.util.Json;
import com.matron.pojo.util.JsonUtils;
import com.matron.pojo.util.MD5;
import com.matron.sso.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value="/register",method={RequestMethod.GET,RequestMethod.POST}, produces= MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    @ResponseBody
    public String createUser(User user,String callback) {
        user.setPass(user.getPassword());
        Json json = new Json();
        String name = "";
        String nickname = "";
        try {
            name=new String(user.getName().getBytes("ISO-8859-1"), "UTF-8");
            nickname=new String(user.getNickname().getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        user.setName(name);
        user.setNickname(nickname);
        System.out.println(user.getEmail()+" "+user.getPass()+" "+user.getPhone()+" "+user.getNickname()+" "+user.getEmail()+" "+user.getName()+" "+user.getUsername());
        try {
            Boolean obj = userService.createUser(user);
            json.setSuccess(true);
            json.setMsg("注册成功");
            String json1 = JsonUtils.objectToJson(json);
            String result = callback + "(" + json1 + ");";
            return result;

        } catch (Exception e) {
            e.printStackTrace();
            json.setSuccess(false);
            json.setMsg("注册失败");
            String json1 = JsonUtils.objectToJson(json);
            String result = callback + "(" + json1 + ");";
            return result;
        }
    }

    //用户登录
    @ResponseBody
    @RequestMapping(value="/login", method={RequestMethod.GET,RequestMethod.POST}, produces= MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    public String userLogin(String username, String password,String callback,
                          HttpServletRequest request, HttpServletResponse response) {
        Json json = new Json();
        System.out.println(username+"  "+password);
        try {
            String obj = userService.userLogin(username, password, request, response);
            System.out.println(obj);
            if(!obj.equals("密码错误")&&!obj.equals("没有此用户名")){
                json.setSuccess(true);
                json.setMsg("登陆成功");
                json.setObj(obj);
            }
            String json1 = JsonUtils.objectToJson(json);
            String result = callback + "(" + json1 + ");";
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            json.setSuccess(true);
            json.setMsg("登录失败");
            String json1 = JsonUtils.objectToJson(json);
            String result = callback + "(" + json1 + ");";
            return result;
        }
    }

    @RequestMapping("/token/{token}")
    @ResponseBody
    public Object getUserByToken(@PathVariable String token, String callback) {
        Json json = new Json();
        User result = null;
        try {
            result = userService.getUserByToken(token);
            json.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
            json.setSuccess(false);
            result = null;
        }

        //判断是否为jsonp调用
        if (StringUtils.isBlank(callback)) {
            json.setObj(result);
            return json;
        } else {
            MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(result);
            mappingJacksonValue.setJsonpFunction(callback);
            return mappingJacksonValue;
        }
    }
}

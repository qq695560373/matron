package com.matron.sso.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.matron.pojo.User;

public interface UserService {

	User checkData(String content, Integer type);
	Boolean createUser(User user);
	String userLogin(String username, String password, HttpServletRequest request, HttpServletResponse response);
	User getUserByToken(String token);
}

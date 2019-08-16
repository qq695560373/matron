package com.matron.sso.service.impl;

import java.beans.Transient;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.matron.mapper.UserMapper;
import com.matron.pojo.User;
import com.matron.pojo.UserExample;
import com.matron.pojo.util.CookieUtils;
import com.matron.pojo.util.JsonUtils;
import com.matron.pojo.util.MD5;
import com.matron.sso.dao.JedisClient;
import com.matron.sso.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private JedisClient jedisClient;
	
	@Value("${REDIS_USER_SESSION_KEY}")
	private String REDIS_USER_SESSION_KEY;
	@Value("${SSO_SESSION_EXPIRE}")
	private Integer SSO_SESSION_EXPIRE;

    @Override
    public User checkData(String content, Integer type) {
        return null;
    }

    /**
	 * 用户注册
	 * @param user
	 * @return
	 */
	@Override
	@Transient
	public Boolean createUser(User user) {
		long time = System.currentTimeMillis();
		user.setId(time);
		user.setIsmatron(0);
		user.setPermissionid(1);
		//md5加密
		user.setPassword(MD5.EncoderByMd5(user.getPass()));
		userMapper.insert(user);
		return true;
	}

	/**
	 * 用户登录
	 */
	@Override
	public String userLogin(String username, String password,
			HttpServletRequest request, HttpServletResponse response) {
		
		UserExample example = new UserExample();
		UserExample.Criteria criteria = example.createCriteria();
		criteria.andUsernameEqualTo(username);
		List<User> list = userMapper.selectByExample(example);
		//如果没有此用户名
		if (null == list || list.size() == 0) {
			return "没有此用户名";
		}
		User user = list.get(0);
		//比对密码
		if (!MD5.EncoderByMd5(password).equals(user.getPassword())) {
			return "密码错误";
		}
		//生成token
		String token = UUID.randomUUID().toString();
		//保存用户之前，把用户对象中的密码清空。
		user.setPassword(null);
		//把用户信息写入redis
		jedisClient.set(REDIS_USER_SESSION_KEY + ":" + token, JsonUtils.objectToJson(user));
		//设置session的过期时间
		jedisClient.expire(REDIS_USER_SESSION_KEY + ":" + token, SSO_SESSION_EXPIRE);
		
		//添加写cookie的逻辑，cookie的有效期是关闭浏览器就失效。
		CookieUtils.setCookie(request, response, "TT_TOKEN", token);
		
		//返回token
		return token;
	}

	@Override
	public User getUserByToken(String token) {
		
		//根据token从redis中查询用户信息
		String json = jedisClient.get(REDIS_USER_SESSION_KEY + ":" + token);
		//判断是否为空
		if (StringUtils.isBlank(json)) {
			return null;
		}
		//更新过期时间
		jedisClient.expire(REDIS_USER_SESSION_KEY + ":" + token, SSO_SESSION_EXPIRE);
		//返回用户信息
		return JsonUtils.jsonToPojo(json, User.class);
	}

}

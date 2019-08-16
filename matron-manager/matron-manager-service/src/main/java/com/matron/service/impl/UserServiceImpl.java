package com.matron.service.impl;

import com.matron.mapper.UserMapper;
import com.matron.pojo.User;
import com.matron.pojo.UserExample;
import com.matron.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.Transient;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper UserMapper;
    @Override
        public User getItemById(long itemid) {
        User user = UserMapper.selectByPrimaryKey(itemid);
        return user;
    }

    @Override
    public List<User> getAll() {
        UserExample example = new UserExample();
        List<User> list = UserMapper.selectByExample(example);
        return list;
    }

    @Override
    @Transient
    public Boolean addItem(User user) {
        UserMapper.insert(user);
        return true;
    }

    @Override
    public Boolean updateItem(User user) {
        UserMapper.updateByPrimaryKey(user);
        return true;
    }

    @Override
    public User findById(Long id) {
        User user = UserMapper.selectByPrimaryKey(id);
        return user;
    }
    @Override
    @Transient
    public Boolean delectById(Long id) {
        UserMapper.deleteByPrimaryKey(id);
        return true;
    }}

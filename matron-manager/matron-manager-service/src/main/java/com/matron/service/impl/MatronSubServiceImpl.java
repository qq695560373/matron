package com.matron.service.impl;

import com.matron.mapper.SubscribeMapper;
import com.matron.pojo.Subscribe;
import com.matron.pojo.SubscribeExample;
import com.matron.service.MatronSubService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.Transient;
import java.util.List;

@Service("SubscribeService")
public class MatronSubServiceImpl implements MatronSubService {
    @Autowired
    private SubscribeMapper SubscribeMapper;
    @Override
        public Subscribe getItemById(int itemid) {
        Subscribe Subscribe = SubscribeMapper.selectByPrimaryKey(itemid);
        return Subscribe;
    }

    @Override
    public List<Subscribe> getAll() {
        SubscribeExample example = new SubscribeExample();
        List<Subscribe> list = SubscribeMapper.selectByExample(example);
        return list;
    }

    @Override
    @Transient
    public Boolean addItem(Subscribe Subscribe) {
        SubscribeMapper.insert(Subscribe);
        return true;
    }

    @Override
    public Boolean updateItem(Subscribe Subscribe) {
        SubscribeMapper.updateByPrimaryKey(Subscribe);
        return true;
    }

    @Override
    public Subscribe findById(int id) {
        Subscribe Subscribe = SubscribeMapper.selectByPrimaryKey(id);
        return Subscribe;
    }
    @Override
    @Transient
    public Boolean delectById(int id) {
        SubscribeMapper.deleteByPrimaryKey(id);
        return true;
    }}

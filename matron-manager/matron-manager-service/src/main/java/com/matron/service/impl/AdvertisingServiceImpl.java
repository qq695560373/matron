package com.matron.service.impl;

import com.matron.mapper.AdvertisingMapper;
import com.matron.pojo.Advertising;
import com.matron.pojo.AdvertisingExample;
import com.matron.service.AdvertisingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.Transient;
import java.util.List;

@Service("AdvertisingService")
public class AdvertisingServiceImpl implements AdvertisingService {
    @Autowired
    private AdvertisingMapper AdvertisingMapper;
    @Override
        public Advertising getItemById(int itemid) {
        Advertising Advertising = AdvertisingMapper.selectByPrimaryKey(itemid);
        return Advertising;
    }

    @Override
    public List<Advertising> getAll() {
        AdvertisingExample example = new AdvertisingExample();
        List<Advertising> list = AdvertisingMapper.selectByExample(example);
        return list;
    }

    @Override
    @Transient
    public Boolean addItem(Advertising Advertising) {
        AdvertisingMapper.insert(Advertising);
        return true;
    }

    @Override
    public Boolean updateItem(Advertising Advertising) {
        AdvertisingMapper.updateByPrimaryKey(Advertising);
        return true;
    }

    @Override
    public Advertising findById(int id) {
        Advertising Advertising = AdvertisingMapper.selectByPrimaryKey(id);
        return Advertising;
    }
    @Override
    @Transient
    public Boolean delectById(int id) {
        AdvertisingMapper.deleteByPrimaryKey(id);
        return true;
    }}

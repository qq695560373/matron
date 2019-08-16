package com.matron.service.impl;

import com.matron.mapper.IndentMapper;
import com.matron.pojo.Indent;
import com.matron.pojo.IndentExample;
import com.matron.service.IndentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.Transient;
import java.util.List;

@Service
public class IndentServiceImpl implements IndentService {
    @Autowired
    private IndentMapper IndentMapper;
    @Override
        public Indent getItemById(long itemid) {
        Indent Indent = IndentMapper.selectByPrimaryKey(itemid);
        return Indent;
    }

    @Override
    public List<Indent> getAll() {
        IndentExample example = new IndentExample();
        List<Indent> list = IndentMapper.selectByExample(example);
        return list;
    }

    @Override
    @Transient
    public Boolean addItem(Indent Indent) {
        IndentMapper.insert(Indent);
        return true;
    }

    @Override
    @Transient
    public Boolean updateItem(Indent Indent) {
        IndentMapper.updateByPrimaryKeySelective(Indent);
        return true;
    }

    @Override
    public Indent findById(Long id) {
        Indent Indent = IndentMapper.selectByPrimaryKey(id);
        return Indent;
    }
    @Override
    @Transient
    public Boolean delectById(Long id) {
        IndentMapper.deleteByPrimaryKey(id);
        return true;
    }}

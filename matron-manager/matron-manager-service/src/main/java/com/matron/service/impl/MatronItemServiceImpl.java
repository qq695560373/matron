package com.matron.service.impl;

import com.matron.mapper.MatronItemMapper;
import com.matron.pojo.MatronItem;
import com.matron.pojo.MatronItemExample;
import com.matron.service.MatronItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.Transient;
import java.util.List;

@Service("matronItemService")
public class MatronItemServiceImpl implements MatronItemService {
    @Autowired
    private MatronItemMapper matronItemMapper;
    @Override
        public MatronItem getItemById(long itemid) {
        MatronItem matronItem = matronItemMapper.selectByPrimaryKey(itemid);
        return matronItem;
    }

    @Override
    public List<MatronItem> getAll() {
        MatronItemExample example = new MatronItemExample();
        List<MatronItem> list = matronItemMapper.selectByExample(example);
        return list;
    }

    @Override
    @Transient
    public Boolean addItem(MatronItem matronItem) {
        matronItemMapper.insert(matronItem);
        return true;
    }

    @Override
    @Transient
    public Boolean updateItem(MatronItem matronItem) {
        matronItemMapper.updateByPrimaryKeySelective(matronItem);
        return true;
    }

    @Override
    public MatronItem findById(Long id) {
        MatronItem matronItem = matronItemMapper.selectByPrimaryKey(id);
        return matronItem;
    }
    @Override
    @Transient
    public Boolean delectById(Long id) {
        matronItemMapper.deleteByPrimaryKey(id);
        return true;
    }}

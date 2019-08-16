package com.matron.service.impl;

import com.matron.mapper.MatronCheckMapper;
import com.matron.pojo.MatronCheck;
import com.matron.pojo.MatronCheckExample;
import com.matron.service.MatronCheckService;
import com.matron.service.MatronCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.Transient;
import java.util.List;

@Service("matroncheckService")
public class MatronCheckServiceImpl implements MatronCheckService {
    @Autowired
    private MatronCheckMapper MatronCheckMapper;
    @Override
        public MatronCheck getItemById(long itemid) {
        MatronCheck MatronCheck = MatronCheckMapper.selectByPrimaryKey(itemid);
        return MatronCheck;
    }

    @Override
    public List<MatronCheck> getAll() {
        MatronCheckExample example = new MatronCheckExample();
        List<MatronCheck> list = MatronCheckMapper.selectByExample(example);
        return list;
    }

    @Override
    @Transient
    public Boolean addItem(MatronCheck MatronCheck) {
        MatronCheckMapper.insert(MatronCheck);
        return true;
    }

    @Override
    public Boolean updateItem(MatronCheck MatronCheck) {
        MatronCheckMapper.updateByPrimaryKey(MatronCheck);
        return true;
    }

    @Override
    public MatronCheck findById(long id) {
        MatronCheck MatronCheck = MatronCheckMapper.selectByPrimaryKey(id);
        return MatronCheck;
    }
    @Override
    @Transient
    public Boolean delectById(long id) {
        MatronCheckMapper.deleteByPrimaryKey(id);
        return true;
    }}

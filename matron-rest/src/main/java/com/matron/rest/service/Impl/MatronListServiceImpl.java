package com.matron.rest.service.Impl;

import com.matron.mapper.MatronItemMapper;
import com.matron.pojo.MatronItem;
import com.matron.pojo.MatronItemExample;
import com.matron.rest.service.MatronListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MatronListServiceImpl implements MatronListService {

    @Autowired
    private MatronItemMapper matronItemMapper;

    @Override
    public List<MatronItem> getAll() {
        MatronItemExample example = new MatronItemExample();
        List<MatronItem> list = matronItemMapper.selectByExample(example);
        return list;
    }

    @Override
    public List<MatronItem> getAllOther(String str) {
        MatronItemExample example = new MatronItemExample();
        example.setOrderByClause(str);
        List<MatronItem> list = matronItemMapper.selectByExample(example);
        return list;
    }
}

package com.matron.service.impl;

import com.matron.mapper.MatronDetailMapper;
import com.matron.pojo.MatronDetail;
import com.matron.pojo.MatronDetailExample;
import com.matron.service.MatronDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.Transient;
import java.util.List;

@Service("matronDetailService")
public class MatronDetailServiceImpl implements MatronDetailService {
    @Autowired
    private MatronDetailMapper matronDetailMapper;
    @Override
        public MatronDetail getDetailById(long detailid) {
        MatronDetail matronDetail = matronDetailMapper.selectByPrimaryKey(detailid);
        return matronDetail;
    }

    @Override
    public List<MatronDetail> getAll() {
        MatronDetailExample example = new MatronDetailExample();
        List<MatronDetail> list = matronDetailMapper.selectByExample(example);
        return list;
    }

    @Override
    @Transient
    public Boolean addDetail(MatronDetail matronDetail) {
        matronDetailMapper.insert(matronDetail);
        return true;
    }

    @Override
    @Transient
    public Boolean updateDetail(MatronDetail matronDetail) {
        matronDetailMapper.updateByPrimaryKeySelective(matronDetail);
        return true;
    }

    @Override
    public MatronDetail findById(Long id) {
        MatronDetail matronDetail = matronDetailMapper.selectByPrimaryKey(id);
        return matronDetail;
    }

    @Override
    @Transient
    public Boolean delectById(Long id) {
        matronDetailMapper.deleteByPrimaryKey(id);
        return true;
    }
}

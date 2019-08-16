package com.matron.service;

import com.matron.pojo.MatronDetail;

import java.util.List;

public interface MatronDetailService {
    MatronDetail getDetailById(long detailid);
    List<MatronDetail> getAll();
    Boolean addDetail(MatronDetail matronDetail);
    Boolean updateDetail(MatronDetail matronDetail);
    MatronDetail findById(Long id);
    Boolean delectById(Long id);
}

package com.matron.rest.service;

import com.matron.pojo.MatronItem;

import java.util.List;

public interface MatronListService {
    List<MatronItem> getAll();
    List<MatronItem> getAllOther(String str);
}

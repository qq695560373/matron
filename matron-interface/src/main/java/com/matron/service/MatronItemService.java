package com.matron.service;

import com.matron.pojo.MatronItem;

import java.util.List;

public interface MatronItemService {
    MatronItem getItemById(long itemid);
    List<MatronItem> getAll();
    Boolean addItem(MatronItem matronItem);
    Boolean updateItem(MatronItem matronItem);
    MatronItem findById(Long id);
    Boolean delectById(Long id);
}

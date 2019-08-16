package com.matron.service;



import com.matron.pojo.Indent;

import java.util.List;

public interface IndentService {
    Indent getItemById(long id);
    List<Indent> getAll();
    Boolean addItem(Indent Indent);
    Boolean updateItem(Indent Indent);
    Indent findById(Long id);
    Boolean delectById(Long id);
}

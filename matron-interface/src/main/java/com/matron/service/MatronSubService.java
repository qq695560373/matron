package com.matron.service;



import com.matron.pojo.Subscribe;

import java.util.List;

public interface MatronSubService {
    Subscribe getItemById(int id);
    List<Subscribe> getAll();
    Boolean addItem(Subscribe user);
    Boolean updateItem(Subscribe user);
    Subscribe findById(int id);
    Boolean delectById(int id);
}

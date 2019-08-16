package com.matron.service;



import com.matron.pojo.User;

import java.util.List;

public interface UserService {
    User getItemById(long id);
    List<User> getAll();
    Boolean addItem(User user);
    Boolean updateItem(User user);
    User findById(Long id);
    Boolean delectById(Long id);
}

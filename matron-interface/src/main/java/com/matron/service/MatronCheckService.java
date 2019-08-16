package com.matron.service;



import com.matron.pojo.MatronCheck;
import com.matron.pojo.User;

import java.util.List;

public interface MatronCheckService {
    MatronCheck getItemById(long id);
    List<MatronCheck> getAll();
    Boolean addItem(MatronCheck user);
    Boolean updateItem(MatronCheck user);
    MatronCheck findById(long id);
    Boolean delectById(long id);
}

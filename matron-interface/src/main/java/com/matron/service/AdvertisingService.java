package com.matron.service;



import com.matron.pojo.Advertising;

import java.util.List;

public interface AdvertisingService {
    Advertising getItemById(int id);
    List<Advertising> getAll();
    Boolean addItem(Advertising Advertising);
    Boolean updateItem(Advertising Advertising);
    Advertising findById(int id);
    Boolean delectById(int id);
}

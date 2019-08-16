package com.matron.rest.service;

import com.matron.pojo.QuestionAsk;

import java.util.List;

public interface QuestionService {
    List<QuestionAsk> getAll();
    List<QuestionAsk> getAllOther(int id);
}

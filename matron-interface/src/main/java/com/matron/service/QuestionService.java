package com.matron.service;



import com.matron.pojo.QuestionAsk;

import java.util.List;

public interface QuestionService {
    List<QuestionAsk> getAll();
    Boolean addItem(QuestionAsk QuestionAsk);
    Boolean updateItem(QuestionAsk QuestionAsk);
    QuestionAsk findById(Long id);
    Boolean delectById(Long id);
}

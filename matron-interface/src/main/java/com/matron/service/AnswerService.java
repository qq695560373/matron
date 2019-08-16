package com.matron.service;



import com.matron.pojo.QuestionAnswer;

import java.util.List;

public interface AnswerService {
    List<QuestionAnswer> getAll();
    QuestionAnswer findById(Integer id);
    Boolean delectById(Integer id);
    List<QuestionAnswer> findByQid(Integer id);
}

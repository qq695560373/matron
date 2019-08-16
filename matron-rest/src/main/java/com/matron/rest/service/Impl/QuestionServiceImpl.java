package com.matron.rest.service.Impl;

import com.matron.mapper.QuestionAskMapper;
import com.matron.pojo.*;
import com.matron.rest.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionAskMapper questionAskMapper;

    @Override
    public List<QuestionAsk> getAll() {
        QuestionAskExample example = new QuestionAskExample();
        List<QuestionAsk> list = questionAskMapper.selectByExample(example);
        return list;
    }

    @Override
    public List<QuestionAsk> getAllOther(int id) {

        List<QuestionAsk> list = questionAskMapper.selectByTopicid(id);
        return list;
    }
}

package com.matron.service.impl;

import com.matron.mapper.QuestionAskMapper;
import com.matron.pojo.QuestionAsk;
import com.matron.pojo.QuestionAskExample;
import com.matron.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.Transient;
import java.util.List;

@Service
public class QuestionServiceImpl implements QuestionService {
    @Autowired
    private QuestionAskMapper QuestionAskMapper;
    QuestionAskExample example = new QuestionAskExample();
    @Override
    public List<QuestionAsk> getAll() {
        List<QuestionAsk> list = QuestionAskMapper.selectByExample(example);
        return list;
    }

    @Override
    @Transient
    public Boolean addItem(QuestionAsk QuestionAsk) {
        QuestionAskMapper.insert(QuestionAsk);
        return true;
    }

    @Override
    @Transient
    public Boolean updateItem(QuestionAsk QuestionAsk) {
        QuestionAskMapper.updateByExample(QuestionAsk,example);
        return true;
    }

    @Override
    public QuestionAsk findById(Long id) {
        QuestionAsk QuestionAsk = QuestionAskMapper.selectByPrimaryKey(id);
        return QuestionAsk;
    }
    @Override
    @Transient
    public Boolean delectById(Long id) {

        QuestionAskMapper.deleteByPrimaryKey(id);
        return true;
    }}

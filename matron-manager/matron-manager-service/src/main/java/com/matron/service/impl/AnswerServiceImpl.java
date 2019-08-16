package com.matron.service.impl;

import com.matron.mapper.QuestionAnswerMapper;
import com.matron.pojo.QuestionAnswer;
import com.matron.pojo.QuestionAnswerExample;
import com.matron.service.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.Transient;
import java.util.List;

@Service("answerService")
public class AnswerServiceImpl implements AnswerService {
    @Autowired
    private QuestionAnswerMapper QuestionAskMapper;
    QuestionAnswerExample example = new QuestionAnswerExample();
    @Override
    public List<QuestionAnswer> getAll() {
        List<QuestionAnswer> list = QuestionAskMapper.selectByExample(example);
        return list;
    }

    @Override
    public List<QuestionAnswer> findByQid(Integer id) {
        QuestionAnswerExample example = new QuestionAnswerExample();
        QuestionAnswerExample.Criteria cri = example.createCriteria();
        cri.andQidEqualTo(id);
        List<QuestionAnswer> QuestionAsk = QuestionAskMapper.selectByExample(example);
        return QuestionAsk;
    }

    @Override
    public QuestionAnswer findById(Integer id) {
        QuestionAnswer QuestionAsk = QuestionAskMapper.selectByPrimaryKey(id);
        return QuestionAsk;
    }
    @Override
    @Transient
    public Boolean delectById(Integer id) {

        QuestionAskMapper.deleteByPrimaryKey(id);
        return true;
    }}

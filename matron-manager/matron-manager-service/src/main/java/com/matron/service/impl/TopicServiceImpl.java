package com.matron.service.impl;

import com.matron.mapper.TopicMapper;
import com.matron.pojo.Topic;
import com.matron.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TopicServiceImpl implements TopicService {
    @Autowired
    private TopicMapper TopicMapper;
    @Override
    public Topic findById(int id) {
        Topic Topic = TopicMapper.selectByPrimaryKey(id);
        return Topic;
    }
}

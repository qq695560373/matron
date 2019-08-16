package com.matron.mapper;

import com.matron.pojo.QuestionAsk;
import com.matron.pojo.QuestionAskExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionAskMapper {
    int countByExample(QuestionAskExample example);

    int deleteByExample(QuestionAskExample example);

    int insert(QuestionAsk record);

    int insertSelective(QuestionAsk record);

    List<QuestionAsk> selectByExample(QuestionAskExample example);

    List<QuestionAsk> selectByTopicid(@Param("topicid") int topicid);

    QuestionAsk selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") QuestionAsk record, @Param("example") QuestionAskExample example);

    int updateByExample(@Param("record") QuestionAsk record, @Param("example") QuestionAskExample example);
}
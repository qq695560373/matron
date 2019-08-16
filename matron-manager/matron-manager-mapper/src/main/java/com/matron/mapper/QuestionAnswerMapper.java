package com.matron.mapper;

import com.matron.pojo.QuestionAnswer;
import com.matron.pojo.QuestionAnswerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionAnswerMapper {
    int countByExample(QuestionAnswerExample example);

    int deleteByExample(QuestionAnswerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(QuestionAnswer record);

    int insertSelective(QuestionAnswer record);

    List<QuestionAnswer> selectByExample(QuestionAnswerExample example);

    QuestionAnswer selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") QuestionAnswer record, @Param("example") QuestionAnswerExample example);

    int updateByExample(@Param("record") QuestionAnswer record, @Param("example") QuestionAnswerExample example);

    int updateByPrimaryKeySelective(QuestionAnswer record);

    int updateByPrimaryKey(QuestionAnswer record);
}
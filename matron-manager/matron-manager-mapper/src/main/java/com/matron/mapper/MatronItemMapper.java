package com.matron.mapper;

import com.matron.pojo.MatronItem;
import com.matron.pojo.MatronItemExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MatronItemMapper {
    int countByExample(MatronItemExample example);

    int deleteByExample(MatronItemExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MatronItem record);

    int insertSelective(MatronItem record);

    List<MatronItem> selectByExample(MatronItemExample example);

    MatronItem selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MatronItem record, @Param("example") MatronItemExample example);

    int updateByExample(@Param("record") MatronItem record, @Param("example") MatronItemExample example);

    int updateByPrimaryKeySelective(MatronItem record);

    int updateByPrimaryKey(MatronItem record);
}
package com.matron.mapper;

import com.matron.pojo.MatronCheck;
import com.matron.pojo.MatronCheckExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MatronCheckMapper {
    int countByExample(MatronCheckExample example);

    int deleteByExample(MatronCheckExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MatronCheck record);

    int insertSelective(MatronCheck record);

    List<MatronCheck> selectByExample(MatronCheckExample example);

    MatronCheck selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MatronCheck record, @Param("example") MatronCheckExample example);

    int updateByExample(@Param("record") MatronCheck record, @Param("example") MatronCheckExample example);

    int updateByPrimaryKeySelective(MatronCheck record);

    int updateByPrimaryKey(MatronCheck record);
}
package com.matron.mapper;

import com.matron.pojo.MatronDetail;
import com.matron.pojo.MatronDetailExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MatronDetailMapper {
    int countByExample(MatronDetailExample example);

    int deleteByExample(MatronDetailExample example);

    int deleteByPrimaryKey(Long id);

    int insert(MatronDetail record);

    int insertSelective(MatronDetail record);

    List<MatronDetail> selectByExample(MatronDetailExample example);

    MatronDetail selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") MatronDetail record, @Param("example") MatronDetailExample example);

    int updateByExample(@Param("record") MatronDetail record, @Param("example") MatronDetailExample example);

    int updateByPrimaryKeySelective(MatronDetail record);

    int updateByPrimaryKey(MatronDetail record);
}
package com.xiexin.service;

import com.xiexin.bean.TBusiness;
import com.xiexin.bean.TBusinessExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TBusinessService {
   
    long countByExample(TBusinessExample example);

    int deleteByExample(TBusinessExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TBusiness record);

    int insertSelective(TBusiness record);

    List<TBusiness> selectByExample(TBusinessExample example);

    TBusiness selectByPrimaryKey(Integer id);
  
    int updateByExampleSelective(@Param("record") TBusiness record, @Param("example") TBusinessExample example);

    int updateByExample(@Param("record") TBusiness record, @Param("example") TBusinessExample example);

    int updateByPrimaryKeySelective(TBusiness record);

    int updateByPrimaryKey(TBusiness record);

}

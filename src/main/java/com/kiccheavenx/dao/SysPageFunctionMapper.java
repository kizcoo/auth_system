package com.kiccheavenx.dao;

import com.kiccheavenx.domain.entity.SysPageFunction;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysPageFunctionMapper {

    SysPageFunction selectByIdPageFunction(@Param("id") Integer id);
    List<SysPageFunction> selectAll();
    int insertSelective(SysPageFunction pageFunction);
    int updateByIdPageFunction(SysPageFunction pageFunction);
    int deleteByIdPageFunction(Integer id);
}

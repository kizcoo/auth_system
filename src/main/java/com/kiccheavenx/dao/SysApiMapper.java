package com.kiccheavenx.dao;

import com.kiccheavenx.domain.entity.SysApi;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysApiMapper {

    SysApi selectByIdApi(@Param("id") Integer id);
    List<SysApi> selectAll();
    int insertSelective(SysApi sysApi);
    int updateByIdApi(SysApi api);
    int deleteByIdApi(Integer id);
}

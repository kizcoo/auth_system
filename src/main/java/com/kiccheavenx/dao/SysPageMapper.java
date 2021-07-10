package com.kiccheavenx.dao;

import com.kiccheavenx.domain.entity.SysPage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysPageMapper {

    SysPage selectByIdPage(@Param("id") Integer id);
    List<SysPage> selectAll();
    int insertSelective(SysPage page);
    int updateByIdPage(SysPage page);
    int deleteByIdPage(Integer id);
}

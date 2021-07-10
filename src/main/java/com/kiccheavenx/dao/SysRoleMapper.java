package com.kiccheavenx.dao;

import com.kiccheavenx.domain.entity.SysRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysRoleMapper {

    SysRole selectByIdRole(@Param("id") Integer id);
    List<SysRole> selectAll();
    int insertSelective(SysRole role);
    int updateByIdRole(SysRole role);
    int deleteByIdRole(Integer id);
}

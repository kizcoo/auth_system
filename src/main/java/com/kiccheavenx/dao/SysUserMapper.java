package com.kiccheavenx.dao;

import com.kiccheavenx.domain.entity.SysUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysUserMapper {

    SysUser selectByIdUser(@Param("id") Integer id);
    List<SysUser> selectAll();
    int insertSelective(SysUser user);
    int updateByIdUser(SysUser user);
    int deleteByIdUser(Integer id);
}

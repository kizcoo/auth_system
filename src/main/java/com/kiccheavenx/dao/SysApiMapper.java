package com.kiccheavenx.dao;

import com.kiccheavenx.domain.entity.SysApi;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysApiMapper {

    SysApi selectByIdApi(@Param("id") Integer id);
    List<SysApi> selectAll(@Param("start") Integer start, @Param("count") Integer count, @Param("sort_column") String sort_column, @Param("isAsce") boolean asce);
    int insertSelective(SysApi sysApi);
    int updateByIdApi(SysApi api);
    int deleteByIdApi(Integer id);
    List<SysApi> selectByNameApi(@Param("pattern") String pattern, @Param("start") Integer start, @Param("count") Integer count, @Param("sort_column") String sort_column, @Param("isAsce") boolean asce);
    List<SysApi> selectByPathApi(@Param("pattern") String pattern, @Param("start") Integer start, @Param("count") Integer count, @Param("sort_column") String sort_column, @Param("isAsce") boolean asce);
    List<SysApi> selectByNameApiRegExp(@Param("pattern") String pattern, @Param("start") Integer start, @Param("count") Integer count, @Param("sort_column") String sort_column, @Param("isAsce") boolean asce);
    List<SysApi> selectByPathApiRegExp(@Param("pattern") String pattern, @Param("start") Integer start, @Param("count") Integer count, @Param("sort_column") String sort_column, @Param("isAsce") boolean asce);
}

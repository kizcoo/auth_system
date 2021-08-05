package com.kiccheavenx.domain.entity;

import java.util.Date;
import java.util.List;

public class SysPageFunction {

    private Integer id;
    private Integer pageId;
    private String name;
    private String key;
    private Date addTime;
    private Short status;

    private List<SysRole> roleList;

    private List<SysApi> apiList;

    public SysPageFunction() {
    }

    public List<SysRole> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<SysRole> roleList) {
        this.roleList = roleList;
    }

    public List<SysApi> getApiList() {
        return apiList;
    }

    public void setApiList(List<SysApi> apiList) {
        this.apiList = apiList;
    }

    public SysPageFunction(Integer id, Integer pageId, String name, String key, Date addTime, Short status) {
        this.id = id;
        this.pageId = pageId;
        this.name = name;
        this.key = key;
        this.addTime = addTime;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPageId() {
        return pageId;
    }

    public void setPageId(Integer pageId) {
        this.pageId = pageId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }
}

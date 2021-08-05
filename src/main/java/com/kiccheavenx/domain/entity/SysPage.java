package com.kiccheavenx.domain.entity;

import java.util.Date;
import java.util.List;

public class SysPage {

    private Integer id;
    private String path;
    private String name;
    private Integer order;
    private Integer parentId;
    private Short type;
    private Date addTime;
    private Short status;

    private List<SysRole> roleList;

    private List<SysApi> apiList;

    public SysPage() {
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

    public SysPage(Integer id, String path, String name, Integer order, Integer parentId, Short type, Date addTime, Short status) {
        this.id = id;
        this.path = path;
        this.name = name;
        this.order = order;
        this.parentId = parentId;
        this.type = type;
        this.addTime = addTime;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Short getType() {
        return type;
    }

    public void setType(Short type) {
        this.type = type;
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

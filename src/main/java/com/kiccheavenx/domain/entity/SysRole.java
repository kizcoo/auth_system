package com.kiccheavenx.domain.entity;

import java.util.List;

public class SysRole {

    private Integer id;
    private String name;
    private Short status;
    private String desc;

    private List<SysUser> userList;

    private List<SysPage> pageList;

    public SysRole() {
    }

    public List<SysUser> getUserList() {
        return userList;
    }

    public void setUserList(List<SysUser> userList) {
        this.userList = userList;
    }

    public List<SysPage> getPageList() {
        return pageList;
    }

    public void setPageList(List<SysPage> pageList) {
        this.pageList = pageList;
    }

    public List<SysPageFunction> getPageFunctionList() {
        return pageFunctionList;
    }

    public void setPageFunctionList(List<SysPageFunction> pageFunctionList) {
        this.pageFunctionList = pageFunctionList;
    }

    private List<SysPageFunction> pageFunctionList;

    public SysRole(Integer id, String name, Short status, String desc) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.desc = desc;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}

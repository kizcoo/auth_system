package com.kiccheavenx.domain.entity;

import java.util.Date;
import java.util.List;

public class SysApi {

    private Integer id;
    private String name;
    private String path;
    private Short status;
    private Date addTime;

    private List<SysPage> pageList;

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

    public SysApi(Integer id, String name, String path, Short status, Date addTime) {
        this.id = id;
        this.name = name;
        this.path = path;
        this.status = status;
        this.addTime = addTime;
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

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }
}

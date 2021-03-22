package com.jugyang.recommend.entity;

import lombok.Data;

@Data
public class CategoryInfo {
    private Integer dcategoryId;

    private String dcategory;

    private Integer clusterNum;

    private String secondTheme;

    public Integer getDcategoryId() {
        return dcategoryId;
    }

    public void setDcategoryId(Integer dcategoryId) {
        this.dcategoryId = dcategoryId;
    }

    public String getDcategory() {
        return dcategory;
    }

    public void setDcategory(String dcategory) {
        this.dcategory = dcategory;
    }

    public Integer getClusterNum() {
        return clusterNum;
    }

    public void setClusterNum(Integer clusterNum) {
        this.clusterNum = clusterNum;
    }

    public String getSecondTheme() {
        return secondTheme;
    }

    public void setSecondTheme(String secondTheme) {
        this.secondTheme = secondTheme;
    }
}

package com.jugyang.recommend.entity;

import lombok.Data;

@Data
public class Expert {
    private Integer id;
    private String exName;
    private String password;
    private String researchFields;

    public Expert() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getExName() {
        return exName;
    }

    public void setExName(String exName) {
        this.exName = exName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getResearchFields() {
        return researchFields;
    }

    public void setResearchFields(String researchFields) {
        this.researchFields = researchFields;
    }

    public Expert(String exName, String password, String researchFields) {
        this.exName = exName;
        this.password = password;
        this.researchFields = researchFields;

    }
}

package com.jugyang.recommend.entity;

import org.springframework.boot.autoconfigure.domain.EntityScan;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Scholar_info {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer scholar_id;
    private String scholar_name;
    private String scholar_nickname;
    private String scholar_fields;
    private String password;
    private String scholar_paper;
    private String scholar_institution;
    private String scholar_post;
    private String scholar_description;
    private String recommend_bussiness_needs_list;
    private String recommend_science_information_list;

    @Override
    public String toString() {
        return "Scholar_info{" +
                "scholar_id=" + scholar_id +
                ", scholar_name='" + scholar_name + '\'' +
                ", scholar_nickname='" + scholar_nickname + '\'' +
                ", scholar_fields='" + scholar_fields + '\'' +
                ", password='" + password + '\'' +
                ", scholar_paper='" + scholar_paper + '\'' +
                ", scholar_institution='" + scholar_institution + '\'' +
                ", scholar_post='" + scholar_post + '\'' +
                ", scholar_description='" + scholar_description + '\'' +
                ", recommend_bussiness_needs_list='" + recommend_bussiness_needs_list + '\'' +
                ", recommend_science_information_list='" + recommend_science_information_list + '\'' +
                '}';
    }

    public Scholar_info(String scholar_name,String scholar_nickname,
                        String password,String scholar_institution,
                        String scholar_post,
                        String scholar_fields){
        this.scholar_name=scholar_name;
        this.scholar_institution=scholar_institution;
        this.scholar_nickname=scholar_nickname;
        this.scholar_post=scholar_post;
        this.password=password;
        this.scholar_fields=scholar_fields;

    }

    public String getScholar_description() {
        return scholar_description;
    }

    public void setScholar_description(String scholar_description) {
        this.scholar_description = scholar_description;
    }

    public Integer getScholar_id() {
        return scholar_id;
    }

    public void setScholar_id(Integer scholar_id) {
        this.scholar_id = scholar_id;
    }

    public String getScholar_name() {
        return scholar_name;
    }

    public void setScholar_name(String scholar_name) {
        this.scholar_name = scholar_name;
    }

    public String getRecommend_bussiness_needs_list() {
        return recommend_bussiness_needs_list;
    }

    public void setRecommend_bussiness_needs_list(String recommend_bussiness_needs_list) {
        this.recommend_bussiness_needs_list = recommend_bussiness_needs_list;
    }

    public String getRecommend_science_information_list() {
        return recommend_science_information_list;
    }

    public void setRecommend_science_information_list(String recommend_science_information_list) {
        this.recommend_science_information_list = recommend_science_information_list;
    }

    public String getScholar_nickname() {
        return scholar_nickname;
    }

    public void setScholar_nickname(String scholar_nickname) {
        this.scholar_nickname = scholar_nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getScholar_paper() {
        return scholar_paper;
    }

    public void setScholar_paper(String scholar_paper) {
        this.scholar_paper = scholar_paper;
    }

    public String getScholar_institution() {
        return scholar_institution;
    }

    public void setScholar_institution(String scholar_institution) {
        this.scholar_institution = scholar_institution;
    }

    public String getScholar_post() {
        return scholar_post;
    }

    public void setScholar_post(String scholar_post) {
        this.scholar_post = scholar_post;
    }

    public String getScholar_fields() {
        return scholar_fields;
    }

    public void setScholar_fields(String scholar_fields) {
        this.scholar_fields = scholar_fields;
    }
}

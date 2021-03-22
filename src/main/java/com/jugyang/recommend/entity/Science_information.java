package com.jugyang.recommend.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Science_information {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)

    private Integer information_id;
    private String title;
    private String title_url;
    private String picture_url;
    private String sort;
    private String description;
    private String keyword;
    private String text;
    private String time;

    @Override
    public String toString() {
        return "Science_information{" +
                "information_id=" + information_id +
                ", title='" + title + '\'' +
                ", title_url='" + title_url + '\'' +
                ", picture_url='" + picture_url + '\'' +
                ", sort='" + sort + '\'' +
                ", description='" + description + '\'' +
                ", keyword='" + keyword + '\'' +
                ", text='" + text + '\'' +
                ", time='" + time + '\'' +
                '}';
    }

    public Integer getInformation_id() {
        return information_id;
    }

    public void setInformation_id(Integer information_id) {
        this.information_id = information_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle_url() {
        return title_url;
    }

    public void setTitle_url(String title_url) {
        this.title_url = title_url;
    }

    public String getPicture_url() {
        return picture_url;
    }

    public void setPicture_url(String picture_url) {
        this.picture_url = picture_url;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}

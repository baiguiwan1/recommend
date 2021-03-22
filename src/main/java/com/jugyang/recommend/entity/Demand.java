package com.jugyang.recommend.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Demand {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer id;
    private String demand_title;
    private String demand_type;
    private String company_name;
    private String money;
    private Date create_time;
    private String phone;
    private String category;
    private String demand_detail;

    @Override
    public String toString() {
        return "DemandHy{" +
                "id=" + id +
                ", demand_tile='" + demand_title + '\'' +
                ", demand_type='" + demand_type + '\'' +
                ", company_name='" + company_name + '\'' +
                ", money='" + money + '\'' +
                ", create_time=" + create_time +
                ", phone='" + phone + '\'' +
                ", category='" + category + '\'' +
                ", demand_detail='" + demand_detail + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDemand_title() {
        return demand_title;
    }

    public void setDemand_tile(String demand_title) {
        this.demand_title = demand_title;
    }

    public String getDemand_type() {
        return demand_type;
    }

    public void setDemand_type(String demand_type) {
        this.demand_type = demand_type;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDemand_detail() {
        return demand_detail;
    }

    public void setDemand_detail(String demand_detail) {
        this.demand_detail = demand_detail;
    }
}

package com.jugyang.recommend.Utils;

import com.jugyang.recommend.entity.Demand;

import java.util.List;

public class ResultDto {
    private Integer pageNo;
    private Integer pageSize;
    private Long totalRecord;
    private Integer totalPage;
    private List<Demand> results;

    public ResultDto(){
        super();
    }

    public ResultDto(Integer pageNo, Integer pageSize, Long totalRecord, Integer totalPage, List<Demand> results){
        this.pageNo = pageNo;
        this.pageSize = pageSize;
        this.totalRecord = totalRecord;
        this.totalPage = totalPage;
        this.results = results;
    }

    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Long getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(Long totalRecord) {
        this.totalRecord = totalRecord;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public List<Demand> getResults() {
        return results;
    }

    public void setResults(List<Demand> results) {
        this.results = results;
    }
}

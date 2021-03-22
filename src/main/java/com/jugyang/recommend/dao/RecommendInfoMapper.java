package com.jugyang.recommend.dao;

import com.jugyang.recommend.entity.Demand;
import org.apache.ibatis.annotations.Select;


public interface RecommendInfoMapper {
    @Select("select * from demand where id=#{id}")
    Demand getRecommandHy(Integer id);
}


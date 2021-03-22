package com.jugyang.recommend.dao;

import com.jugyang.recommend.entity.Science_information;
import org.apache.ibatis.annotations.Select;

public interface ScienceInfoMapper {
    @Select("select * from science_information where information_id=#{id}")
    Science_information getScienceInformation(Integer id);
}

package com.jugyang.recommend.dao;

import com.jugyang.recommend.entity.CategoryInfo;
import org.apache.ibatis.annotations.Select;

public interface CategoryInfoMapper {
    @Select("select * from category_info where dcategoryId=#{dcategoryId}")
    CategoryInfo selectByPrimaryKey(Integer dcategoryId);

    @Select("select dcategory from category_info where dcategoryId=#{dcategoryId}")
    String selectCategoryById(Integer dcategoryId);
}

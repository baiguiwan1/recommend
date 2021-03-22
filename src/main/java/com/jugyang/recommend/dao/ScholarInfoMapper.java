package com.jugyang.recommend.dao;

import com.jugyang.recommend.entity.Scholar_info;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ScholarInfoMapper {
    @Select("select * from scholar_info where scholar_id=#{id}")
    Scholar_info getScholar_info(Integer id);

    @Select("select * from scholar_info where scholar_name like '%${value}%' ")
    List<Scholar_info> searchScholar_info(String name);

    @Select("select * from scholar_info where scholar_nickname=#{nickname}")
    Scholar_info getScholar_infoByNickname(String nickname);

    @Select("select Count(*) from scholar_info where scholar_nickname=#{nickname}")
    Integer countByNickname(String nickname);

    @Options(useGeneratedKeys = true, keyColumn = "scholar_id", keyProperty =
            "scholar_id")
    @Insert("insert into scholar_info(scholar_name,scholar_nickname, " +
            "password, scholar_institution, scholar_post,scholar_fields) " +
            "values(#{scholar_name}, #{scholar_nickname}, #{password}, #{scholar_institution}, #{scholar_post}, #{scholar_fields})")
    //Integer insertScholar_info(String scholar_name, String scholar_nickname, String password, String scholar_institution, String scholar_post, String scholar_fields);
    Integer insertScholar_info(Scholar_info scholar_info);


    @Update("update scholar_info set scholar_nickname=#{nickname}, " +
            "password=#{password}, " +
            "scholar_fields=#{researchFields} where scholar_id=#{id}")
    int updateScholar_info(String nickname, String password,
                           String researchFields, Integer id);

    @Update("update scholar_info set scholar_description=#{scholar_description} where " +
            "scholar_id=#{id}")
    int updateScholar_Description(String scholar_description, Integer id);

    @Select("select * from scholar_info order by convert(scholar_name USING gbk)")
    List<Scholar_info> selectScholarInfoList();
}

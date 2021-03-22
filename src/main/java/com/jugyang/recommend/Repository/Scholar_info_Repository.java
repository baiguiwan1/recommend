package com.jugyang.recommend.Repository;


import com.jugyang.recommend.entity.Scholar_info;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface Scholar_info_Repository extends JpaRepository<Scholar_info, Integer> {
    @Query("from Scholar_info S where S.scholar_id=:id")
    Scholar_info getScholar_info(@Param("id") int id);

    @Query("from Scholar_info  S where S.scholar_name=:name")
    List<Scholar_info> searchScholar_info(@Param("name") String name);

    @Query("from Scholar_info S where S.scholar_nickname=:nickname")
    Scholar_info getScholar_infoByNickname(@Param("nickname") String nickname);

    @Query("select count(S.scholar_nickname) from Scholar_info S where S.scholar_nickname=:nickname")
    int countByNickname(@Param("nickname") String nickname);

    @Modifying
    @Transactional
    @Query(value = "insert into scholar_info(scholar_nickname, scholar_name, password, scholar_fields, scholar_institution, scholar_post) values(?1, ?2, ?3, ?4, ?5, ?6 )", nativeQuery=true)
    int insertScholar_info(String nickname,
                           String scholar_name,
                           String password,
                           String researchFields, String institution,
                           String scholar_post);

    @Modifying
    @Transactional
    @Query("update Scholar_info S set S.scholar_nickname=?1, S.password=?2, S.scholar_fields=?3 where S.scholar_id=?4")
    int updateScholar_info(String nickname, String password, String researchFields, int id);

    @Modifying
    @Transactional
    @Query("update Scholar_info S set S.scholar_description=?1 where S.scholar_id=?2")
    int updateScholar_Description(String scholar_description, int id);
}



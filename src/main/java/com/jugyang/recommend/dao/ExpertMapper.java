package com.jugyang.recommend.dao;

import com.jugyang.recommend.entity.Expert;

public interface ExpertMapper {

    int insert(Expert expert);

    Expert selectByPrimaryKey(Integer id);

    int countByExName(String username);

    Expert selectByExName(String exName);
}

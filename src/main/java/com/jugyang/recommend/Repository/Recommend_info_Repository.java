package com.jugyang.recommend.Repository;

import com.jugyang.recommend.entity.Demand;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface Recommend_info_Repository extends JpaRepository<Demand, Integer> {

    @Query("from Demand where id=:id")
    Demand getRecommandHy(@Param("id") int id);
}

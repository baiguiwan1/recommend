package com.jugyang.recommend.Repository;

import com.jugyang.recommend.entity.Demand;
import com.jugyang.recommend.entity.Science_information;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface Science_info_Repository extends JpaRepository<Science_information, Integer> {
    @Query("from Science_information where information_id=:id")
    Science_information getScienceInformation(@Param("id") int id);
}

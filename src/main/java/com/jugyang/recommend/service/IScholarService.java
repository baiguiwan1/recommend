package com.jugyang.recommend.service;

import com.jugyang.recommend.entity.Expert;
import com.jugyang.recommend.entity.Scholar_info;
import com.jugyang.recommend.vo.ResponseVo;

public interface IScholarService {
    /**
     * 注册
     */
    ResponseVo<Scholar_info> register(String nickname, String password, String researchFields, int id);
    /**
     * 无id注册
     */
    ResponseVo<Scholar_info> newRegister(String nickname, String scholar_name, String password, String researchFields, String institution, String scholar_post);

    /**
     * 登录
     */
    ResponseVo<Scholar_info> login_by_nickname(String name, String password);
}